def solution(array, height):
    x = 0
    sort_array = sorted(array)
    for i in sort_array :
        if height < i :
            x += 1
    return x