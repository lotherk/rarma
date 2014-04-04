__author__ = 'lukrop'

from client.client import Client

rarmaClient = Client()
print("connecting")
rarmaClient.connect("127.0.0.1", 31337)
print("connected")
recv = rarmaClient.send(1, "test\n")
print(recv)