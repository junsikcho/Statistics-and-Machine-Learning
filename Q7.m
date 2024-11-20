clear all
clc
load DATAq7
n=0;
for i=1:1000000
    sex = DATA(i,1);
    age = DATA(i,2);
    wei = DATA(i,3);
    if sex == 1
        if age==5 | age==6
            n=n+1;
            man20w(n)=wei;
        end
    end
end
mean(man20w)