% 여학생의 몸무게의 표준편차는 얼마인가?
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