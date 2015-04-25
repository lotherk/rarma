require "fiddle"

BUFFSIZE=4096
RarmaDL = Fiddle.dlopen('./rarma.so')
RarmaExt = Fiddle::Function.new(RarmaDL['RVExtension'], [Fiddle::TYPE_VOIDP, Fiddle::TYPE_INT, Fiddle::TYPE_VOIDP], Fiddle::TYPE_VOID)
@output_p = Fiddle::Pointer.malloc(BUFFSIZE)

def rarma_write message
  RarmaExt.call(@output_p, BUFFSIZE, message)
  @output_p.to_s
end

funcname = <<EOF
Rarma::ProxyFactory.new ["MyModule::MyClass", 1, 2, "foobar"]
EOF

puts "Version #{rarma_write('version')}"
puts rarma_write(funcname)
