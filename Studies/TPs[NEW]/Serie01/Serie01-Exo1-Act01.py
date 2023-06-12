def Substract(L1, L2):
    result = []
    for item in L1:
        if item not in L2:
            result.append(item)
    return result
