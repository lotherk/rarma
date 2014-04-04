__author__ = 'lukrop'

import socket
import json


class Client():
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    def connect(self, host, port):
        self.sock.connect((host, port))

    def close(self):
        self.sock.close()

    def send(self, tid, message):
        bmsg = bytes(message, "utf-8")
        self.sock.send(bmsg)
        return self.sock.recv(4)
