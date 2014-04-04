from client import Client

rarmaClient = Client()
print("connecting")
rarmaClient.connect("127.0.0.1", 31337)
print("connected")
recv = rarmaClient.send("[['command', 'sqf'],['target',1],['script','hint \"this is a test\"']]\n")
print(recv)
