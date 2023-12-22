def solution(n, k):
    x = []
    for i in range(1, int(n/k)+1) :
        x.append(i * k)
    return x