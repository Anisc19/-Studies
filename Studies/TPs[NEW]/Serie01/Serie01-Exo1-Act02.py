def repeat_by_list(L1, L2):
    result = []
    for i in range(len(L1)):
        repeated = [L1[i]] * L2[i]
        result.append(repeated)
    return result
L1 = [6,1]
L2 = [2,4]
result = repeat_by_list(L1,L2)
print(result)