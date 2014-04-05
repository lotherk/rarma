from client import Client

rarmaClient = Client()
print("connecting")
rarmaClient.connect("127.0.0.1", 31337)
print "connected"
rarmaClient.q_append(1, "[['key', 'value")
rarmaClient.q_append(1, "'],")
rarmaClient.q_append(1, "['another key','with a'],['val',")
rarmaClient.q_append(1, "['foo', 'bar']]]")
print rarmaClient.q_send(1)
