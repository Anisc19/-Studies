def shuffle_symbol(word, c):
    if not isinstance(word, str):
        raise TypeError("Le premier argument doit être une chaîne de caractères.")
    if not isinstance(c, str) or len(c) != 1:
        raise TypeError("Le deuxième argument doit être un caractère.")
    result = ""
    for i in range(len(word)):
        result += word[i] + c
    result += c   
    return result
##MAIN##
result = shuffle_symbol("hello", "h")
print(result)  
