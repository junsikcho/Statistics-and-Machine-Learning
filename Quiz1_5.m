% 여학생중 몸무게가 65kg 이하인 학생의 키 평균은 얼마인가?

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
