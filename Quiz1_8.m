% Q8. 2019년 건강검진 결과 자료를 이용하여 대한민국 서울지역에
% 거주하는 40대(40 ~ 49세) 여성의 LDL 콜레스테롤값의 평균값을 구하여라.

clear all
clc

load DATAq8
n=0;
for i=1:1000000 % 100만명 데이터
    % 데이터에서 시도(1), 성별(2), 나이(3), LDL콜레스트롤(4) 
    area = DATA(i,1); % 데이터에서 1은 시도코드
    sex = DATA(i,2); % 데이터에서 2는 성별코드
    age = DATA(i,3); % 데이터에서 3은 나이코드
    ldl = DATA(i,4); % 데이터에서 4는 LDL코드

    if area ==11 % 서울지역 코드 11
        if sex == 2 % 여성 코드 2
            if age == 9 | age == 10 % 40~44세 : 9 , 45~49세 : 10 코드
                if ~isnan(ldl) % nan : 데이터가 비어 있거나 잘못된 경우를 나타냄
                % ~는 부정 연산자(nan이 아니다.)
                % 즉, ~isnan(ldl)는 ldl값이 유효한 경우메만 처리한다는 뜻
                n=n+1; % ldl값을 찾았을때 n을 1 증가
                tldl(n)=ldl; % tldl : 유효한 ldl값만 저장 설정
                end
            end
        end
    end
end

mean(tldl)
