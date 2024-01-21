def solution(num_list):
    x = 1
    y = 0
    for i in num_list :
        x *= int(i)
        y += int(i)
    if x < y*y : 
        return 1
    else : 
        return 0