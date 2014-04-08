import clr
clr.AddReference('IronRuby') # ensure that IronRuby is installed.
from IronPython import Ruby

ruby_engine = Ruby.CreateEngine()
ruby_scope = self.ruby_engine.CreateScope()

def ruby(script):
    return ruby_engine.Execute(script,scope)
