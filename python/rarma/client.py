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

    def send(self, tid, message):
        bmsg = bytes(message)
        self.sock.send(bmsg)
        return str(self.sock.recv(1024))
