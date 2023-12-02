def solution(numbers):
    x = 0
    for i in numbers :
        x += i
        answer = x / len(numbers)
    return answer