def solution(n):
    x = len(str(n))
    answer = 0
    for i in str(n) :
        answer += int(i)
    return answer