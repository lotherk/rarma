require "method_source"
require "ripper"
require "sexp_processor"
require "pp"
require "ruby_parser"
require "rarma"

Rarma.logger.level = Logger::DEBUG
class SQF
  def hint message
    puts "HINT: %s" % message
  end
end
classs = <<-EOC

_test1 = "this"
_test2 = "working"
hint "dummy If \#{_test1} is \#{_test2}, everything's fine!"

_f = ["will be n", "will be m", "might be o", "will be p"]
_hash = { "this" => "is", "a" => "hash" , "key" => :value }
_mested = {
  :a => {
    :b => "c"
  },
  :d => ["a", "b", "c"]
}
_x = B.new
_x.a.b.c!

_access = _hash["this"]
_access1 = _hash[1]["that"]

_array_access = _f[2]

_f.each do |elem, val|
  puts "\#{elem} and \#{val} PLUS \#{Time.now}"
end

_f.each do |_m|
  hint _m
end


def myfunction param1, param2="foo", opts={}
  if opts["test"] and :true and 1 == 1 or false and (true and true)
    hint "Yo, we have \#{opts[:test]}!"
  elsif true
    hint "fett"
  else
    hint "bla"
  end
  "returnstring"
end

simple_hash = { "key1" => "value1", "key2" => "value2" }
simple_hash.each do |k, v|
  f = true ? "true" : "false"

  hint "f is: \#{f}"

  if k == "key1"
    hint "Key is key1, very nice. It's value is: \#{v}"
  end
end
EOC

classs = <<-EOC

class SQF::Object::Foo
  attr_reader :posATL, :damage, :class

  def initialize
    @posATL = [0, 0, 0]
    @damage = 0
    @class = nil
  end
  def setPosATL pos
    @posATL = pos
  end


  def randomUnit
    classes = CfgConfig.new
    r = Random.rand(100)
    classes['unit'][r]
  end

  def setDamage damage
    @damage = damage
  end

  def setClass klass
    @class = klass
  end

  def getClass
    @class
  end
end
class Test < Foo

end
class Unit < SQF::Object::Foo
  attr_reader :test, :blubb, :bla
  def initialize
    @test = nil
    @blubb = "blubber"
    @bla = false
  end
end

#Thread.new {
#  puts "This is a test in a spawn!"
#}

_unit = Unit.new
_unit.setClass "C_Man"
_unit.setPosATL [1234,5,0]
_unit.spawn

_group = _unit.group
_group.createUnits(10, _unit)
_units = _group.units
_units.each do |_u| 
  _u.setDamage(1)
end

def test(a, b=2, c)
  config = CfgConfig.new
  hint "%s %s %s" % [a, b, c]
  hint "\#{a} \#{b} \#{c}"
end

while true and false and false and _unit.foobar?
  puts "endlose schleife"
end

hint "bla"

Thread.new {
  puts "This is a test in a spawn!"
}
foobar do
  hint "foobar do!!"
end

_hash = {}
_hash["test"]["barfoo"]["foooooo"]["bluuuuuuubbbb"] = Unit.new
_test = _hash["test"]["barfoo"]["fooooo"].damage

class SQF::Object
  attr_reader :damage, :direction

  def initialize opts={}
    opts.each do |k, v|
      eval("self.\#{k}=\#{v} if self.respond_to?\#{k}")
    end
  end
end
_array = [1, 2, 3, 4, 5, 6, 7]
_array.each_with_index do |e, i|
  puts "\#{i}: \#{e}"
end

eval("1 + 1")
@damage >= 1 ? false : true
EOC
#eval(classs, binding)
#src = C.instance_method(:foo).source

# remove method signature
#r = Ripper.sexp_raw(classs)

$TYPES = {}
class Analyzer < SexpProcessor
  attr_accessor :root
  def initialize
    super
    self.auto_shift_type = true
    @current_method = nil
    @current_module = nil
    @script = []
    @indent = 0
    @spaces = 4
    @root = false
  end
  def self.process(ast)
    self.new.process(ast)
  end
  def process_colon2 exp
    result = []
    while exp.count > 0
      cur = exp.shift
      if cur.is_a? Sexp
        a = self.class.new
        a.process cur
        result << a.script
      else
        result << cur
      end
    end
    @script << result.flatten.join("_")
    exp
  end
  def process_class(exp)
    name = exp.shift
    if name.is_a? Sexp
      a = self.class.new
      a.process name
      name = a.script.join("_")
    else
      name = name.to_s
    end
    $current_class = name
    inherit = exp.shift
    if inherit.nil?
      @script << "CLASS(\"%s\")\n" % name
    else
      a = self.class.new
      a.process inherit
      inherit = a.script.join("")
      @script << "CLASS_EXTEND(\"%s\", \"%s\")\n" % [name, inherit]
    end
    a = self.class.new
    while exp.count > 0
      a.process exp.shift
    end
    @script << a.script.join("\n")
    @script << "}\n"
    $current_class = nil
    exp
  end

  def xprocess_module exp

  end

  def process_iter exp
    Rarma.logger.debug("#{self} Processing iteration #{exp}")
    scope = Analyzer.new
    iter_var = exp.shift
    iter_args = exp.shift
    while exp.count > 0
      scope.process exp.shift
    end
    @script << "[{\n"
    iter_args.shift
    argline = []
    if iter_args.count > 1
      iter_args.each_with_index do |ar, i|
        argline << "#{ar} = _x select #{i}\n"
      end
    elsif iter_args.count == 1
      argline << "#{iter_args.shift} = _x\n"
    end
    @script << argline
    @script << scope.script    
    Rarma.logger.debug "Proccesing iter_Var #{iter_var}"
    a = self.class.new
    a.process iter_var
    Rarma.logger.debug "Processed: #{a.script}"
#    iter_func = 
    Rarma.logger.debug "Having iter_var #{iter_var} and iter_args #{iter_args}"

#    raise "foo"

    @script << "\n}] call #{a.script.join("")}\n"
    Rarma.logger.debug("#{self} End of iteration")
    exp
  end

  def process_lvar exp
    Rarma.logger.debug "#{self} Processing lvar #{exp}"
    cur = exp.shift
    @script << "#{cur}"
    Rarma.logger.debug "#{self} End of lvar"
    exp
  end
  def process_const exp
    @script << exp.shift.to_s
    exp
  end
  def process_dstr exp
    Rarma.logger.debug "#{self} Processing DSTR #{exp}"
    results = []
    while exp.count > 0
      cur = exp.shift
      if cur.is_a? Sexp
        a = self.class.new
        a.process cur
        results << a.script.join("")
      else
        results << '"%s"' % cur
      end
    end
    line = []
    args = []
    c = 1
    results.each do |s|
      if s.match(/^".*"$/)
        line << s.gsub(/^"/, '').gsub(/"$/, '')
      else
        line << "%#{c}"
        args << s
        c += 1
      end
    end
    format = []
    format << '"%s"' % line.join("")
    format << args.join(", ")

    @script << '(format[%s])' % format.join(", ")
    exp
  end
  def process_evstr exp
    Rarma.logger.debug "#{self} Processing EVSTR #{exp}"
    results = []
    while exp.count > 0
      a = self.class.new
      a.process exp.shift
      results << '%s' % a.script.join("")
    end

    @script << results.join(" + ")
    Rarma.logger.debug "EVSTR: #{a.script}"

    exp
  end
  def process_false exp
    @script << "false"
    s()
  end
  def process_true exp
    @script << "true"
    s()
  end
  def process_call exp
    Rarma.logger.debug("#{self} Processing call with #{exp}")
    left = exp.shift
    func = exp.shift
    tmp = []
    a = Analyzer.new
    Rarma.logger.debug "#{left} is a #{left.class}"
    if left.is_a? Sexp
      a.process left
      Rarma.logger.debug "#{left} got: #{a.script.flatten.join(".")}"
    else
    end
    Rarma.logger.debug("#{self}   got #{a.script}")
    left = a.script.flatten.join("")
#    @script << a.script
    Rarma.logger.debug "left: #{left} (#{left.class}), func: #{func} (#{func.class})"
    if func.to_s == "[]"
      # hash access, retval should be hash name.
      key = exp.shift
      a = Analyzer.new
      a.process key
      key = a.script.join("").chomp
      @script << '(["get", %s] call %s)' % [key, left]
      Rarma.logger.debug "Hash access for #{left}, key #{key}"
    elsif func.to_s == "=="
      a = self.class.new 
      a.process exp.shift
      @script << '(%s %s %s)' % [left, func, a.script.join("")]
      Rarma.logger.debug "Comparison #{left} #{func} #{a.script.join("")}"
#    elsif func.to_s == '%'
       
    else
#      @script << "#{func} moep"
      a = Analyzer.new
      while exp.count > 0
       cur = exp.shift
       if cur.is_a? Sexp
          Rarma.logger.debug("#{self} Processing nested Sexp: #{cur}")
          a.process cur
        else
          Rarma.logger.debug "cur is a #{cur.class} => #{cur}"
        end
      end
      # a.script should be arguments for func
      left.strip!
      unless left.empty?
        argline = ""
        if a.script.count > 1
          argline = ", [" + a.script.join(",") + "]"
        elsif a.script.count == 1
          argline = ", #{a.script.join("").chomp.strip}"
        else
          argline = ""
        end
        @script << '(["%s"%s] call %s)' % [func, argline, left]
        #@script << a.script
      else
        if func.to_s == "attr_reader"
          if $current_class
            a.script.each do |var|
              @script << 'PRIVATE VARIABLE("%s", nil)' % var
            end
          end
        else
          @script << "%s %s\n" % [func, a.script.join("")]
        end
      end
      @script << "\n" if @root
      Rarma.logger.debug("#{self} End of call")
    end
    exp
  end

  def process_while exp
    condition = exp.shift
    Rarma.logger.debug "While condition: #{condition}"
    a = self.class.new
    a.process condition
    condition = a.script.join("")
    a = self.class.new
    while exp.count > 0
      cur = exp.shift
      if cur.is_a? Sexp
        a.process cur
      else
      end
    end

    @script << "waitUntil {\n"
    @script << a.script.join("")
    @script << "(%s)" % condition
    @script << "\n}\n"
    exp
  end

  def process_and exp
    Rarma.logger.debug "#{self} Processing and #{exp}"
    results = []
    while exp.count > 0
      a = self.class.new
      a.process exp.shift
      results << a.script.join("")
    end
    @script << results.join(" and ")
    exp
  end

  def process_or exp
    Rarma.logger.debug "#{self} Processing or #{exp}"
    results = []
    while exp.count > 0
      a = self.class.new
      a.process exp.shift
      results << a.script.join("")
    end
    @script << results.join(" or ")
    exp
  end

  def process_if(exp)
    Rarma.logger.debug "#{self} Processing if #{exp}"
    a = self.class.new
    a.process exp.shift
    condition = a.script.join("")
    @script << "if (%s) then {\n" % condition

    a = self.class.new
    a.process exp.shift
    @script << a.script.join("")

    if exp.count > 0
      # else?
      a = self.class.new
      a.process exp.shift
      if a.script.count > 0
        @script << "\n} else {\n"
        @script << a.script.join("")
      end
    end
    @script << "\n}\n"
    exp
  end

  def process_defn(exp)
    Rarma.logger.debug "#{self} Processing defn #{exp}"
    name = exp.shift
    a = self.class.new
    while exp.count > 0
      a.process exp.shift
    end
    if $current_class
      @script << 'PUBLIC FUNCTION("", "%s") {' % name
      @script << a.script.join("\n")
      @script << "}\n"
    else
      @script << "#{name} = {\n#{a.script.join("\n")}\n}\n"
    end
    exp
  end
  def process_self exp
    @script << "_SELF"
    s()
  end
  def process_attrasgn exp
    # add something to hash.
    right = exp.pop
    last = exp.pop
    garbage = exp.pop
    indexs = exp.shift

    a = self.class.new
    a.process indexs
    index_line = a.script.join("")
    line = ""
    a = self.class.new
    a.process last
    last = a.script.join("")
    a = self.class.new
    a.process right
    right = a.script.join("")
    
    index_line = "([\"set\", #{last}, #{right}] call #{index_line})\n"
    @script << index_line
#    raise a.script.join("\n")
    exp
  end
  def xprocess_defs(exp)
    Rarma.logger.debug "#{self} Processing defs #{exp}"
  end

  def process_args exp
    Rarma.logger.debug "#{self} Processing args #{exp}"
    args = []
    while exp.count > 0
      cur = exp.shift
      if cur.is_a? Sexp
        Rarma.logger.debug "#{self} Args Sexp: #{cur}"
        a = self.class.new
        a.process cur
        args << a.script
      else
        Rarma.logger.debug "#{self} Args No Sexp: #{cur}"
        args << cur
      end
#      args << a.script
    end
    Rarma.logger.debug("#{self} Got args: #{args}")
    vals = []
    vargs = []
    args.each_with_index do |arg, i|
      vname = nil
      default = nil
      if arg.is_a? Array
        x = arg.shift.to_s.split("=")
        vname = x[0].strip
        default = x[1].strip
      else
        vname = arg.to_s
        default = "nil"
      end
      vargs << '%s' % vname
      vals << '%s = DEFAULT_PARAM(%i, %s)' % [vname, i, default]
      Rarma.logger.debug("#{self} arg#{i}: #{arg}")
    end
    if vargs.count > 0
      @script << 'private ["%s"]' % vargs.join('", "')
    end
    @script << vals
    exp
  end

  def process_fcall exp

  end

  def process_sclass exp

  end

  def process_ivar exp
    name = exp.shift
    name = name.to_s.gsub(/^@/, '')
    @script << 'MEMBER("%s", nil)' % name
    exp
  end

  def process_lit exp
    @script << "#{exp.shift}"
    exp
  end

  def process_str exp
    @script << "\"#{exp.shift}\""
    exp
  end

  def process_array exp
    Rarma.logger.debug "#{self} Processing array #{exp}"
    a = Analyzer.new
    while exp.count > 0
      a.process exp.shift
    end
    @script << "[\"new\", [#{a.script.join(", ")}]] call Array"
    Rarma.logger.debug "#{self} End of array"
    exp
  end

  def process_hash exp
    Rarma.logger.debug "#{self} Processing hash #{exp}"
    scope = Analyzer.new
    kv = []
    while exp.count > 0
      key = exp.shift
      val = exp.shift
      kscope = Analyzer.new
      vscope = Analyzer.new
      kscope.process key
      vscope.process val

      kv << "[#{kscope.script[0]}, #{vscope.script[0]}]"
      Rarma.logger.debug "  Key #{kscope.script} => #{vscope.script}"
    end
    @script << "[\"new\", [#{kv.join(", ")}]] call Hash"
    Rarma.logger.debug "#{self} End of hash"
    exp
  end

  def process_iasgn exp
    Rarma.logger.debug "#{self} Processing asgn #{exp}"
    name = exp.shift
    name = name.to_s.gsub(/^@/, '')
#    if name =~/^_/
#      name = 'private "%s"; %s' % [name, name]
#    end
    #@script << "#{name} = "
    a = Analyzer.new
    while exp.count > 0
      a.process exp.shift
    end
    #@script << a.script.join("")
    val = a.script.join("")
    val = "nil" if val.empty?
    @script << 'MEMBER("%s", %s)' % [name, val]
    #@script << "\n"
    Rarma.logger.debug "#{self} End of lasgn: #{a.script.join("")}"
    exp
    
  end
  def process_lasgn exp
    Rarma.logger.debug "#{self} Processing lasgn #{exp}"
    name = exp.shift
    if name =~/^_/
      name = 'private "%s"; %s' % [name, name]
    end
#    @script << "#{name} = "
    a = Analyzer.new
    while exp.count > 0
      a.process exp.shift
    end
    @script << '%s = %s' % [name, a.script.join("")]
    @script << "\n"
    Rarma.logger.debug "#{self} End of lasgn: #{a.script.join("")}"
    exp
  end

  def script
    ret = []
    @script.flatten.each do |s|
      next unless s
      next if s.empty?
      ret << s
    end
    ret
  end
end
inp = classs
if ARGV[0]
  inp = File.read(ARGV[0])
end

class Testr
  def makeSomething param1, param2=""
    unless param2.empty?
      if param1.is_a?Integer
        while param1 < 100
          param1 += 1
        end
      else
        raise "Param1 is no integer"
      end
    end

    Rarma.logger.debug "#{param2}"
  end
end

def magic inp
f = RubyParser.new.parse(inp)
pp f
a = Analyzer.new
a.root = true
begin
  a.process(f)
rescue Exception => e
  puts e.message
  puts e.backtrace.join("\n")
  raise
end
puts inp
puts "===" * 80

res = a.script.join("").split("\n")
res = []
a.script.join("").split("\n").each do |n|
  next if n.empty?
  n += ";" if n !~ /{$/
  res << n
end

def indent arr
  spaces = 4
  indent = 0
  res = []
  arr.each do |n|
    n.chomp!
    n.strip!
    if n=~/^CLASS.*;$/
      n.gsub!(/;$/, '')
    end
    if n=~/^}/
      indent -= spaces
    end
    indent = 0 if indent < 0
    res << "#{" " * indent}#{n}"
    if n=~ /{$/ or n=~/^CLASS.*$/
      indent += spaces
    end
  end
  res
end
puts indent(res).join("\n")
end
#puts a.script.join("").split("\n").compact.join(";\n").split("{").join("{\n") + ";\n"


class Dummy; end
t = Testr.new
#magic t.method(:makeSomething).source
magic inp
