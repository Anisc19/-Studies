def symmetric_browse(L):
    L12 = []
    j = len(L) - 1
    for i in range(0,len(L)):
        if(i<=j):
            L12.append(L[i])
            j = j - 1
    return L12
L=[1,2,3,4,5,6,7,8,9]
L12=[]
L12=symmetric_browse(L)
print(L12)