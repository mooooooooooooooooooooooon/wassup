def solution(my_string, n):
    result = ''
    for i in my_string :
        x = i * n
        result = result + x
    return result