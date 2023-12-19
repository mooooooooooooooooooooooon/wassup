coffee = 10
while True :
    money = int(input('돈을 넣어 주세요 : '))
    if money == 300 :
        print('커피를 추출합니다.')
        coffee = coffee -1
        print('남은 커피 수량 : %d' % coffee)
    elif money > 300 :
        print('잔돈 %d를 돌려주고 커피를 추출합니다'  %(money-300))
        coffee = coffee -1
        print('남은 커피 수량 : %d' % coffee)
    else :
        print('돈을 더 넣어주세요')
    if coffee == 0 :
        print('판매 중지')
        break