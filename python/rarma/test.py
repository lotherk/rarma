from client import Client

rarmaClient = Client()
print("connecting")
rarmaClient.connect("127.0.0.1", 31337)
print("connected")
recv = rarmaClient.send("[['key', 'value'],['key1',1],['key2',[1,2,3]]]\n")
print(recv)
