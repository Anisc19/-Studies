def factors(word):
    factors = []
    for i in range(1, len(word) + 1):
        if len(word) % i ==0:
            factors.append(word[:i])
    return factors
##MAIN##
word = "abcd"
print(factors(word))
    
