import socket
import json

class Client():
    def __init__(self):
        self.tid = 0
        self.queue = {}
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
            self.sock.send(json.dumps(jdic) + "\n")
            ret = self.sock.recv(1024)
            return str(self.deunicode(self.rhash(json.loads(ret))))
        except:
            return '[["exception","Unknown error"]]'
        return false

    def rhash(self, json):
        ret = []
        for k,v in json.iteritems():
            if type(v) == dict:
                v = self.rhash(v)
            ret.append([str(k),v])
        return ret

    def get_tid(self):
        self.tid += 1
        return self.tid

    def deunicode(self,lst):
        res = []
        for l in lst:
            if type(l) == list:
                l = self.deunicode(l)
            if type(l) == unicode:
                l = str(l)
            res.append(l)
        return res

    def q_append(self, tid, message):
        if not tid in self.queue:
            self.queue[tid] = ""
        self.queue[tid] += message

    def q_send(self, tid):
        if tid in self.queue:
            return self.send(self.queue.pop(tid, None))
        return false
