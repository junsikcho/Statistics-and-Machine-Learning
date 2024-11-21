% 키가 170 이상인 학생의 몸무게 평균을 얼마인가?

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