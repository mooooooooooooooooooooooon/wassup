def solution(n):
    for i in range(1, n) :
        if i * i > n :
            answer = 2
            break
        elif i * i == n :
            answer = 1    
            break
    return answer