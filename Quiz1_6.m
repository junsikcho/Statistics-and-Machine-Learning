% 남학생중 키가 170cm 이하인 학생의 비율 (남학생중 키가 170cm 이하인 숫자/전체 남학생 숫자) 은 (% 단위로 답하시오)? 

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