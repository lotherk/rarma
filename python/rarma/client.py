import socket
import json

class Client():
    def __init__(self):
        pass

    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    def connect(self, host, port):
        self.sock.connect((host, port))

    def close(self):
        self.sock.close()

    def send(self, message):
        jdic = {}
        try:
            result = eval(message) # whaaaaat??? yes.
            for kv in result:
                jdic.update({kv[0]:kv[1]})
        except:
            return '[["error","malformed message. must be hash"]]'
        self.sock.send(json.dumps(jdic) + "\n")
        ret = self.sock.recv(1024)
        print ret
        print str(self.deunicode(self.rhash(json.loads(ret))))

    def rhash(self, json):
        ret = []
        for k,v in json.iteritems():
            if type(v) == dict:
                v = self.rhash(v)
            ret.append([str(k),v])
        return ret

    def deunicode(self,lst):
        res = []
        for l in lst:
            if type(l) == list:
                l = self.deunicode(l)
            if type(l) == unicode:
                l = str(l)
            res.append(l)
        return res
