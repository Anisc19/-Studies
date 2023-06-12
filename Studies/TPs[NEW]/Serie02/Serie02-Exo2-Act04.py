def shuffle(w1, w2):
    i = 0
    j = 0
    result = ""
    while i < len(w1) and j < len(w2):
        result += w1[i]
        result += w2[j]
        i += 1
        j += 1
    if i < len(w1):
        result += w1[i:]
    if j < len(w2):
        result += w2[j:]
    return result
##MAIN##
w1 = "eat"
w2 = "carrots"
print(shuffle(w1,w2))