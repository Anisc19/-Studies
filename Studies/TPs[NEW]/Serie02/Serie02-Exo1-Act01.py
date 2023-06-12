def flatten_word(w_tuple):
    word = ""
    for symbol, count in w_tuple:
        word += symbol * count
    return word
