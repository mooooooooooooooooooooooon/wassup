전화번호부 = {} ## 전화번호부 리셋

prompt = """
1. 연락처 추가
2. 연락처 전체보기
3. 검색
4. 수정
5. 삭제
6. 종료

Enter number : """

prompt

number = 0
while number != 6 :
    print(prompt)
    number = int(input())
    if number == 1 :
        print('이름을 입력해주세요')
        이름 = input()
        print('연락처를 입력해주세요')
        연락처 = input()
        전화번호부[이름]=연락처
        print(f'요청하신 {이름}의 연락처를 {연락처}로 추가하였습니다.')

        ### 기능 1 : 연락처 추가
    
    elif number == 2 :
        print("전체 연락처:")
        for 이름, 연락처 in 전화번호부.items():
            print(f'{이름}: {연락처}')
        
        ### 기능 2 : 연락처 전체 보기
    
    elif number == 3 :
        print('검색할 연락처의 이름을 입력해주세요')
        검색어 = input()
        if 검색어 in 전화번호부 :
            print(f'검색하신 이름의 연락처는 {전화번호부[검색어]} 입니다.')
        else : 
            print('연락처가 등록되지 않았습니다.')
            
        ### 기능 3 : 전화번호 조회
    
    elif number == 4 :
        print('수정할 연락처의 이름을 입력해주세요')
        검색어 = input()
        print('수정할 전화번호를 입력해주세요')
        전화번호 = input()
        if 검색어 in 전화번호부 :
            전화번호부[검색어] = 전화번호
            print(f'요청하신 {검색어}의 연락처를 {전화번호}로 수정하였습니다.')
        else :
            print('연락처가 등록되지 않았습니다.')
            
        ### 기능 4 : 전화번호 수정
        
    elif number == 5 :
        print('삭제할 연락처의 이름을 입력해주세요')
        검색어 = input()
        if 검색어 in 전화번호부 :
            del 전화번호부[검색어]
            print(f'요청하신 {검색어}의 연락처를 삭제하였습니다.')
        else :
            print('연락처가 등록되지 않았습니다.')
            
        ### 기능 5 : 전화번호 삭제
    else :
        print('시스템을 종료합니다.')