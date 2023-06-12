def prefixes(word):
    resultat=[]
    for i in range(len(word)):
        resultat.append(word[:i])
    return resultat
##MAIN##
word = "retry"
print(prefixes(word))