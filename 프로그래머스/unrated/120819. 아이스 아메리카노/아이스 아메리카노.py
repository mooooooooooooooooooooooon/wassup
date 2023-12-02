def solution(money):
    ame = int(money // 5500)
    cha = money - (ame * 5500)
    answer = [ame, cha]
    return answer