
### What have I learned about Blockchain in short

Blockchain is basically a very long linear chain of blocks which are linked linearly. Here each blockchain contains some kind of data, which are stored securely. Each block chain has the following components: hash code, data, hash of previous block and nonce.

The hash code of each block is created by the data, time stamp and the nonce. This hash is unique to the block, we can recalculate the hash code from the data, but we can never find the data from the hash, which is actually encrypted. Making of the hash code is also dependent on the hash of previous block, this means that the hash of a block is dependent on the previous block also. Due to this, to change the data of a block we have to alter all the subsequent blocks which is merely impossible. Therefore, data stored in blockchain is considered incorruptible. 

Role of nonce("number only used once") is to stop replay attacks, this number can be created only once. Once the perfect Nonce is found, it is added to the hashed block. Along with this number, the hash value of that block will get rehashed and creates a difficult algorithm. 
___
### About my code

In my program I have created an object for each block, the data and the previous hash actually determines the  formation of the current hash. If any of the data in the chain is changed , this will further change all the hash code of blocks.
