import clr
clr.AddReference('IronRuby') # ensure that IronRuby is installed.
from IronRuby import Ruby

ruby_engine = Ruby.CreateEngine()
ruby_scope = ruby_engine.CreateScope()

def ruby(script):
    return ruby_engine.Execute(script, ruby_scope)
