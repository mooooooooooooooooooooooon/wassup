def solution(sides):
    sides.sort(reverse = 1)
    if sides[0] < sides[1] + sides[2] :
        return 1
    else :
        return 2
    