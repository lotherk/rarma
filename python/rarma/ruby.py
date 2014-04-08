import clr
clr.AddReference('IronRuby') # ensure that IronRuby is installed.
from IronPython import Ruby

class RubyInstance():
    def __init__(self,scope=None):
        self.ruby_engine = Ruby.CreateEngine():
        if not scope:
            self.ruby_scope = self.ruby_engine.CreateScope()
        else:
            self.ruby_scope = scope

    def execute(self,script):
        self.ruby_engine.Execute(script, self.ruby_scope)
