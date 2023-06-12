def crange(char01, char02):
    str_range = ""
    for c1 in char01:
        for c2 in char02:
            for i in range(ord(c1), ord(c2) + 1):
                str_range += chr(i)
    return str_range
char01 = ["a","f"]
char02 = ["4","9"]
str = crange(char01, char02)
print(str)