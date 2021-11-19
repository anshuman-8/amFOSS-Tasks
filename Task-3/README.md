
 Hackerrank user id : [anshuman8swain](https://www.hackerrank.com/anshuman8swain)
___
## The game I must lose
**Status:** wrong answer❌

```python:
def girl_wins(n,m):
    if n%2!=0:
        print(0)
    else:
        li=[]
        for j in range(1,m+1):
            if j%2!=0 and j<=m:
                li.append(j)
        print(len(li))
        li.sort()
        for e in li:
                print(e,end=" ")
N, M = input().split()
girl_wins(int(N),int(M))

```
___
## Lisa and Shelves
**Status:** Done🤩

```python:
x=int(input())
s=0
i=1
r=[]
while i*i <= x:
    if x % i == 0:
        r.append(i)
        if x//i != i: 
            r.append(x//i)
    i+=1
print(len(r))

```
___
## Bumper Cars
**Status:** Runtime error❌
```python:
def dir_change(pos,dirn):
    for i in range(0,len(pos)):
        for j in range(0,len(pos)):
            if (pos[i]-pos[j]) in [1,-1] and i!=j and dirn[i]!=dirn[j]:
                dirn[i]=dirn[i]*(-1)
                dirn[j]=dirn[j]*(-1)
    return(pos,dirn)

def pos_change(pos,dirn):
    for i in range(0,len(pos)):
        pos[i]=pos[i]+dirn[i]
    return(pos)
    
def pos_extra(l,pos,dirn):
    for i in range(0,len(pos)):
        if pos[i]>l or pos[i]==0:
            pos.pop(i)
            dirn.pop(i)
    return(pos,dirn)
    
n,l=map(int,input().split())
pos=list(map(int,input().split()))
dirn=list(map(int,input().split()))
t=0
while True:
    if t==0:
        pos,dirn=dir_change(pos,dirn)
        
    pos=pos_change(pos,dirn)
    pos,dirn=pos_extra(l,pos,dirn)
    t+=1
    
    if pos==[]:
        print(t)
        break
```
___
## Aver_Max
**Status:** Done🤩
```python:
def func01(li,k):
    li.sort()
    for j in range(k):
        li[j]=abs(li[j])
    return(max(li))

m=int(input())
ans=[]
for i in range(m):
    n,k=map(int,input().split())
    li=list(map(float,input().split()))
    v=func01(li,k)
    ans.append(v)
for j in ans:
    print(j)

```
___
## Problem Solvers vs Developers
**Status:** Done🤩

```python:
def finder(ps,dev):
    ps.sort()
    dev.sort()
    i=0
    s=0
    j=0
    while True:
        if ps==[] or dev==[]:
            break
        if ps[i]>dev[j]:
            s=s+ps[i]
            del ps[i]
            del dev[i]
            break
        else:
            del ps[i]
    return(s,ps,dev)

# main
n,m=map(int,input().split())
dev=list(map(int,input().split()))
ps=list(map(int,input().split()))
sc=0            
if m>n :
    while len(ps)>=len(dev):
        s,ps,dev=finder(ps,dev)
        sc=sc+s
        if ps==[] or dev==[]:
            break
        else:
            continue
if dev==[]:
    print("YES")
    print(sc)
elif dev!=[]:
    print("NO")
```
___
## Sandesh and Strings
**Status:** Done🤩
```python:
def func1(li):
    lio=[]
    s=""
    c=0
    for i in li:
        if i in lio:
            m=0
        else:
            m=0
            for j in li:
                if j==i:
                    m+=1
            k=1
            if m%2==0:
                while(k<=m):
                    s=i+s+i
                    k+=2
                lio.append(i)
            elif m%2!=2 and m>2:
                while(k<=m):
                    if (c==0):
                        s=(i+s[:len(s)//2]+i+s[len(s)//2:]+i)
                        k+=3
                        c=1
                    else:
                        m-=1
                        while(k<=m):
                            s=(i+s[:len(s)//2]+s[len(s)//2:]+i)
                            k+=2
                lio.append(i)    
            elif m%2!=0 and m==1 and c==0:
                s=s[:len(s)//2]+i+s[len(s)//2:]
                lio.append(i)
                c=1                
    return(s)

n=int(input())
str=list(input())
s=func1(str)
print(len(s))
print(s)

```
___
 ## Journey to Regionals
 **Status:** Terminated due to timeout❌
```python:
n=int(input())
li=list(map(int,input().split()))
m=int(input())
try:
    while 1:
        s=0
        a,b=map(int,input().split())
        for j in li[a-1:b]: s+=j
        print(s)
except:
    print()
```
___
## Building Towers 1
**Status:** Done🤩
```python:
def count(li,x):
    c=0
    for i in li:
        if i==x:
            c=c+1
    return c
n=int(input())
li=list(map(int,input().split()))
cli=li
nli=[]
while cli!=[]:
    for j in cli:
        s=count(li,j)
        if s>0:
            nli.append(s)
            for r in range(s):
                cli.remove(j)
nli.sort()
m=nli[-1]
l=len(nli)
print(m,l)

    
```
___
## Ram and Gifts
**Status:** Terminated due to timeout❌
```python:
def fun(a,b,c,d,N):
    if N==0:
        return 0
    if N==1:
        return a
    elif N==2:
        return b
    n=c*fun(a,b,c,d,N-2)+d*fun(a,b,c,d,N-1)
    return (n%1000000007)
    

t=int(input())
ans=[]
for i in range(t):
    a,b,c,d,N=map(int,input().split())
    n=fun(a,b,c,d,N)
    ans.append(n)
for j in ans:
    print(j)

```