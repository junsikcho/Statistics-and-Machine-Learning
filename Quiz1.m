% 1. 50명의 학생의 키의 표준편차는 얼마인가?
% (모집단이 50명 학생이므로 모집단의 표준편차 식을 사용해야함)

clear all
clc
format short

load DATA_POP.txt
A = DATA_POP;
s = 0; % 시작 전 값을 0으로 박고 시작하는게 좋음 
for i=1:50 %for는 반복, i=1:50 1부터 50까지
    % 보통 행렬처럼 i,j,k순으로 많이 사용
    h = A(i,3); % h=키, 3번째 데이터가 키
    s = s+h;
end
m = s / 50  % 평균을 m으로 설정, 50명이니 / 50

vv = 0; % v를 분산으로 설정
for i=1:50
    h = A(i,3);
    d = h-m; % 차이니까 d로 설정
    vv = vv+d^2
end
v = vv/50
st = sqrt(v) % sqrt는 루트고 st는 표준편차

% 주의할 점 
% mean() <= 함수가 매틀랩 평균 구하는 함수임.
% var() <= 함수가 매틀랩 분산 구하는 함수임.
% std() <= 함수가 매틀랩 표준편차 구하는 함수임.
% 하지만, 코드를 사용해서 구하는거와 값이 다르게 나오는데, 
% 매틀랩 함수는 표본의 값들을 구하는거임.
% 모집단의 값들을 구하는거와는 다른거임.
% 그러므로, 이 문제는 모집단의 값을 구해야함. 함수 사용 X

% -------------------------------------------------------
% Q1_2 남학생의 키의 평균은 얼마인가?
% (모집단이 50명 학생이므로 모집단의 표준편차 식을 사용해야함)

clear all
clc
format short

load DATA_POP.txt
A = DATA_POP;
s = 0;
n = 0;
for i = 1 : 50
    sex = A(i, 2);
    h = A(i, 3);
    if sex == 1
        n = n+1;
        manh(n) = h;
    end
end

mean(manh)

% -----------------------------------------------------
% 3. 여학생의 몸무게의 표준편차는 얼마인가?
%(모집단의 표준편차 식을 사용해야 함.)

clear all
clc
format short

load DATA_POP.txt
A = DATA_POP;

n = 0;
for i = 1 : 50
    sex = A(i, 2);
    w = A(i,4); % 몸무게는 w로 설정
    if sex == 2
        n = n + 1;
        womw(n) = w; % wom으로 저장
    end
end
m = mean(womw); 
s = 0;
for i = 1 : n
    s = s + (womw(i)-m)^ 2;
end
v = s / n % v는 분산
st = sqrt(v) % st는 표준편차

% 위와 같은 방법으로 해도 되지만, 아래오 같이 할 수도 있음
% (값은 똑같음.)

v2 = sum((womw - m).^2)/ n
st2 = sqrt(v2)
% ------------------------------------------------
% 4. 키가 170 이상인 학생의 몸무게 평균을 얼마인가?

clear all
clc
format short

load DATA_POP.txt
A = DATA_POP

n = 0;
for i = 1 : 50
    h = A(i, 3); 
    w = A(i, 4); % w는 몸무게
    if h >= 170
        n = n + 1;
        w170(n)= w;
    end
end

mean(w170)

% --------------------------------------------------
% 5.여학생중 몸무게가 65kg 이하인 학생의 키 평균은 얼마인가?

clear all
clc
format short

load DATA_POP.txt
A = DATA_POP;
n = 0;
for i = 1 : 50
    sex = A(i, 2);
    h = A(i,3);
    w = A(i,4);
    if sex == 2
        if w <= 65
            n = n + 1;
            hw65(n) = h;
        end
    end
end

mean(hw65)

% if sex ==2 if w <= 65 에서 다음과 같이 바꿀 수 있음
% if sex == 2 & w <= 65  ( &는 and 기호)
% ------------------------------------------------------
% 6. 남학생중 키가 170cm 이하인 학생의 비율 (남학생중 키가 170cm 이하인 숫자/전체 남학생 숫자) 은 (% 단위로 답하시오)? 

clear all
clc
format short

load DATA_POP.txt
A = DATA_POP;
nm = 0; % 남자의 숫자를 nm로 설정
nm170 = 0; % 남자 중 170이하의 남자를 nm170으로 설정
for i = 1 : 50
    sex = A(i, 2);
    h = A(i, 3);
    w = A(i, 4);
    if sex == 1
        nm = nm + 1;
        if h <= 170
            nm170 = nm170 + 1;
        end
    end
end

nm170 / nm
% 퍼센트로 써야한다면 값의 *100 하면 됨.
% ----------------------------------------------------
% Q7. 2019년 건강검진 결과 자료를 이용하여 
% 대한민국 20대 (20세 ~ 29세) 남자의 평균 체중을 구하여라.

clear all
clc
load DATAq7
n=0;
for i=1:1000000 % 100만명
    % 시도, 성별, 연령대, 체중코드를 가져왔으니 0,1,2,3 지정
    sex = DATA(i,1); % 데이터에서 1은 성별코드 순서
    age = DATA(i,2); % 데이터에서 2는 연령대 코드 순서 
    wei = DATA(i,3); % 데이터에서 3은 체중 코드 순서
    if sex == 1  % 1은 남자 성별코드 
        if age==5 | age==6 % 5는 20~24세, 6은 25,29세 |은 and기호
            n=n+1; 
            man20w(n)=wei; % 20대 남자 평균체중을 man20w으로 설정
        end
    end
end

mean(man20w)
% --------------------------------------------------------
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
