from datetime import datetime
import hashlib


def hashed(data,prv_hash):
    data=data+str(prv_hash)
    hash=hashlib.sha256(data.encode())
    hash=hash.hexdigest()
    return (hash)


class Blocks:
    def __init__(self, data, prv_hash):
        self.data = data
        self.hash = hashed(data,prv_hash)
        self.time_stamp=now = datetime.now()
        self.prev_hash=prv_hash

    def display_block(self):
        print("Hash: ",self.hash)
        print("Data: ",self.data)
        print("Time Stamp: ",self.time_stamp)
        print("previous hash: ",self.prev_hash)


prv_hash=0
#data=input("Enter block 1 data : ")
transactions="Anshuman has 10 bitcoin"
block1=Blocks(transactions,prv_hash)
print("Block 1 created")

prv_hash=block1.hash
#data=input("Enter block 2 data : ")
transactions="Anshuman gave harry 10 bitcoin"
block2=Blocks(transactions,prv_hash)
print("Block 2 created")

prv_hash=block2.hash
#data=input("Enter block 3 data : ")
transaction="harry transferred 2 bitcoin to Starbuck"
block3=Blocks(transaction,prv_hash)
print("Block 3 created")

prv_hash=block3.hash
#data=input("Enter block 4 data : ")
transaction="Harry transferred 5 bitcoins to Tim"
block4=Blocks(transaction,prv_hash)
print("Block 4 created")

print("\n")
block1.display_block()
print("\n")
block2.display_block()
print("\n")
block3.display_block()
print("\n") 
block4.display_block()
print("\n")    
    


