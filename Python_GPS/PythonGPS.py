import pynmea2
msg = pynmea2.parse("$GNGGA,022702.000,3246.6089,N,11703.5302,W,1,07,1.12,130.1,M,-35.6,M,,*4A")
print("Latitude: ", msg.latitude)
print("Longitude: ", msg.longitude)
print("UTC TimeStamp: ", msg.timestamp)


