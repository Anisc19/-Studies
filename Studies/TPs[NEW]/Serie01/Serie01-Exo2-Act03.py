def conditional_replace(s, sub1, sub2, sub3, sub4):
    index = s.find(sub1)
    while index != -1:
        if s[index + len(sub1):].startswith(sub2):
            s = s[:index] + sub3 + s[index+len(sub1)+len(sub2):]
        else:
            s = s[:index] + sub4 + s[index+len(sub1):]
        index = s.find(sub1, index + 1)
    return s
s = "abec=ded"
sub1 = "="
sub2 = "f"
sub3 = "=e"
sub4 = "=f"
ss = conditional_replace(s, sub1, sub2, sub3, sub4)
print(ss)