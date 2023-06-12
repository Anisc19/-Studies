def replace_many(s, L1, L2):
    for i in range(len(L1)):
        s = s.replace(L1[i], L2[i])
    return s
s = "aabc"
L1 = ["a","b","c"]
L2 = ["b","a","d"]
ss = replace_many(s,L1,L2)
print(ss)
