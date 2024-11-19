A = [ 1 2 3; 4 5 6; 7 8 9];

A

disp(A) %disp 명령어를 사용해 변수에 저장된 값만 출력할 수 있음

disp('A matrix =') % disp 명령어를 사용해 특정문자를 출력할 수 있음.

----------------------------

format short
clear all
clc
a = 1/3;
a*100
format long % 매우 중요 (%단위 잦ㄱ성할때)
ans
a*100
-----------------------
% if문은 condition 이 참이면 statements를 실행시킴
% if condition
%     statements
% end

clear all
clc
grade = 70;
if grade >= 60
    disp('passing grade:')
    disp(grade)
end

clear all
clc
grade = 50;
if grade >= 60
    disp('passing grade:')
    disp(grade)
end
if grade < 60
    disp('fail grade:')
    disp(grade)
end
% if structure 임
-------------------------------------------------

% X == 0 (같다) ==
% unit ~= 'm' (다르다) ~=
% a < 0 (Less than) <
% s > t (Greater than) >
% 3.9 <= a/3 (Less than or equal to) <=
% r >= 0 (Greater than or equal to) >=
% x & y (And) x와 y가 모두 참(1)일 때만 x & y 가 참임
% x | y (Or) x와 y중 하나만 참이면 x | y 는 참
---------------------------------------------------

% Loops
% Loops 구조는 특정 line을 반복해 실행하는 프로그램 구조
% 1) For loop는 일정 횟수만큼 반복하는 경우 사용함
% 2) While loop는 특정한 조건을 만족할 때 까지 반복하는 경우 사용함. (반복횟수가 불확실함)
% [for ''' end structure]

% for index = start:step:finish
%     statements
% end

% 130!을 구하라 (For loop)
clear all
clc

K = 130;
R = 1;
for i=1:K
    R=R*i;
end
R

% 5!을 구하라 (For loop)

clear all
clc

K=5;
R=1;
for i=1:K
    R=R*i;
end
R
-----------------------------
% While Loops 구조
% while condition
%     statements
% end

clear all
clc
x = 8;
while x>0
    x = x - 3;
    disp(x)
end
% 8>0 시작 , X=8-3=5, 5>0시작 X=5-3=2. 2>0시작 ~반복

% 5!을 구하라 (While Loop)
clear all
clc
K = 5;
n = 1;
R = 1;
while n<=K
    R=R*n;
    n=n+1;
end
R

% 130!을 구하라 (While Loop)
clear all
clc
K = 130;
n = 1;
R = 1;
while n<=K
    R=R*n;
    n=n+1;
end
R
-------------------------------
% While - Break Structure 
% 
% while(1)
%     statements 1
%     if condition
%         break
%     end
%     statements 2
% end

% 5!을 구하라 (While Break Structure)
clear all
clc
K = 5;
n = 1;
R = 1;
while (1)
    R=R*n;
    n = n + 1;
    if n==K
        break;
    end
end
R

clear all
clc
K = 5;
n = 1;
R = 1;
while (1)
    R = R*n;
    n = n+1;
    if n == K
        R = R * n;
        break;
    end
    
end
R

