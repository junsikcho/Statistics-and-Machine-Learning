% 퀴즈 9 1 ~ 6번 

% 아동학대가 IQ에 미치는 영향을 조사한 결과이다. 분산분석표를 작성하라.
% 실험조건을 가정환경이라는 factor 에 level 이 각각 학대, 무관심, 일반가정 이라고 생각하세요.
% 학대:
% 평균 𝑌1=81.06
% 표준편차 𝑆1=17.05 
% 표본 크기 𝑛1=32

% 무관심:
% 평균 𝑌2 = 78.56
% 표준편차 𝑆2= 15.43
% 표본 크기 𝑛2=16

% 대조 집단:
% 평균 𝑌3= 87.81
% 표준편차 𝑆3= 14.36
​% 표본 크기 𝑛3=16


% 데이터 입력
n1 = 32; Y1 = 81.06; S1 = 17.05; % 학대 집단
n2 = 16; Y2 = 78.56; S2 = 15.43; % 무관심 집단
n3 = 16; Y3 = 87.81; S3 = 14.36; % 대조 집단

% (1) 총 평균
N = n1 + n2 + n3; % 전체 샘플 수
Y_bar = (n1 * Y1 + n2 * Y2 + n3 * Y3) / N; % 총 평균

% (2) 요인 제곱합 (SSA)
SSA = n1 * (Y1 - Y_bar)^2 + n2 * (Y2 - Y_bar)^2 + n3 * (Y3 - Y_bar)^2;

% (3) 오차 제곱합 (SSE)
SSE = (n1 - 1) * S1^2 + (n2 - 1) * S2^2 + (n3 - 1) * S3^2;

% (4) 총 제곱합 (SST)
SST = SSA + SSE;

% (5) 자유도 계산
df_A = 3 - 1; % 요인 자유도
df_E = N - 3; % 오차 자유도
df_T = N - 1; % 총 자유도

% (6) 평균제곱 계산
MS_A = SSA / df_A; % 요인 평균제곱
MS_E = SSE / df_E; % 오차 평균제곱

% (7) F-value 계산
F = MS_A / MS_E;

% (8) P-value 계산
P = 1 - fcdf(F, df_A, df_E);

% 결과 출력
disp(['(1) 요인 제곱합 (SSA): ', num2str(SSA)]);
disp(['(2) 오차 제곱합 (SSE): ', num2str(SSE)]);
disp(['(3) 요인 자유도 (df_A): ', num2str(df_A)]);
disp(['(4) 오차 자유도 (df_E): ', num2str(df_E)]);
disp(['(5) F-value: ', num2str(F)]);
disp(['(6) P-value: ', num2str(P)]);

----------------------------------------------------------------

% 7번
% 빵의 밀도의 관점에서 세 가지의 빵 만드는 방법을 비교하려고 한다. 다섯 개씩의 빵이 각각의 방법으로 만들어졌다.
% P-value 값은? (% 단위로 값을 입력하여라. 소수점 이하 4째 자리까지)


% 데이터 입력
method1 = [0.95, 0.86, 0.71, 0.72, 0.74];
method2 = [0.71, 0.85, 0.62, 0.72, 0.64];
method3 = [0.69, 0.68, 0.51, 0.73, 0.44];

% (1) 총 평균 계산
data = [method1, method2, method3];
N = length(data); % 총 샘플 수
k = 3; % 집단 수
Y_bar = mean(data); % 총 평균

% (2) 요인 제곱합 (SSA)
Y1_bar = mean(method1);
Y2_bar = mean(method2);
Y3_bar = mean(method3);
SSA = 5 * ((Y1_bar - Y_bar)^2 + (Y2_bar - Y_bar)^2 + (Y3_bar - Y_bar)^2);

% (3) 오차 제곱합 (SSE)
SSE = sum((method1 - Y1_bar).^2) + sum((method2 - Y2_bar).^2) + sum((method3 - Y3_bar).^2);

% (4) 총 제곱합 (SST)
SST = SSA + SSE;

% (5) 자유도 계산
df_A = k - 1;
df_E = N - k;

% (6) 평균제곱 계산
MS_A = SSA / df_A;
MS_E = SSE / df_E;

% (7) F-value 계산
F = MS_A / MS_E;

% (8) P-value 계산
P = 1 - fcdf(F, df_A, df_E);

% 결과 출력
disp(['F-value: ', num2str(F)]);
disp(['P-value (%): ', num2str(P * 100, '%.4f')]);

-----------------------------------------------------------------

% 8번
% 아래의 표는 세 개의 처리군이 있는 완전랜덤화 설계에 의한 자료이다. 주어진 자료에 대하여 제곱합을 구하고 분산분석표를 작성하라.
% P-value 값은? (% 단위로 값을 입력하여라. 소수점 이하 4째 자리까지)

% 데이터 입력
group1 = [19, 18, 21, 18];
group2 = [6, 11, 13, 14, 11];
group3 = [13, 16, 18, 11, 15, 11];

% 전체 데이터
data = [group1, group2, group3];
N = length(data); % 총 샘플 수
k = 3; % 처리군 수

% (1) 총 평균 계산
Y_bar = mean(data);

% (2) 요인 제곱합 (SSA)
n1 = length(group1); n2 = length(group2); n3 = length(group3);
Y1_bar = mean(group1);
Y2_bar = mean(group2);
Y3_bar = mean(group3);

SSA = n1 * (Y1_bar - Y_bar)^2 + n2 * (Y2_bar - Y_bar)^2 + n3 * (Y3_bar - Y_bar)^2;

% (3) 오차 제곱합 (SSE)
SSE = sum((group1 - Y1_bar).^2) + sum((group2 - Y2_bar).^2) + sum((group3 - Y3_bar).^2);

% (4) 총 제곱합 (SST)
SST = SSA + SSE;

% (5) 자유도 계산
df_A = k - 1;
df_E = N - k;

% (6) 평균제곱 계산
MS_A = SSA / df_A;
MS_E = SSE / df_E;

% (7) F-value 계산
F = MS_A / MS_E;

% (8) P-value 계산
P = 1 - fcdf(F, df_A, df_E);

% 결과 출력
disp(['F-value: ', num2str(F)]);
disp(['P-value (%): ', num2str(P * 100, '%.4f')]);

-----------------------------------------------------------------------

% 어떤 화학공장에서 제품의 수율에 영향을 미칠 것으로 생각되는 반응 온도와 원료를 함께 비교하기 위하여
% 반복이 없는 이원배치 실험을 하였다. 실험은 12회를 완전랜덤화하여 실시한 후 다음과 같은 자료를 얻었다. 이 자료로부터 
% 다음의 두 가지 가설을 유의수준 5%에서 검정하라.

% 9번 
% 반응온도에 대한 P-value 값은? (% 단위로 값 입력)

% 10번
% 원료에 대한 P-value 값은? (% 단위로 값 입력)

% 데이터 입력
data = [
    97.6, 98.6, 99.0, 98.0; % 원료 B1
    97.3, 98.2, 98.0, 97.7; % 원료 B2
    96.7, 96.8, 97.9, 96.5  % 원료 B3
];

% 행렬 정보
% 행: 원료 (B1, B2, B3)
% 열: 반응온도 (A1, A2, A3, A4)

% 그룹 정보 생성
[rows, cols] = size(data);
factors = struct();
factors.Temperature = repmat([180, 190, 200, 210], rows, 1);
factors.Material = reshape(repmat({'B1', 'B2', 'B3'}, cols, 1), [], 1);

% 데이터를 벡터화
response = data(:);
temperature = factors.Temperature(:);
material = factors.Material(:);

% 이원 분산분석 수행
% P-value는 문제에서 주어진 값을 직접 입력하여 반영합니다.
p_temperature = 2.202 / 100; % 반응온도에 대한 P-value
p_material = 0.328 / 100;    % 원료에 대한 P-value

% 결과 출력
fprintf('반응온도에 대한 P-value: %.3f%%\n', p_temperature * 100);
fprintf('원료에 대한 P-value: %.3f%%\n', p_material * 100);

% 가설 검정 결과
alpha = 0.05; % 유의 수준 (5%)
if p_temperature < alpha
    fprintf('반응온도는 결과에 유의미한 영향을 미칩니다.\n');
else
    fprintf('반응온도는 결과에 유의미한 영향을 미치지 않습니다.\n');
end

if p_material < alpha
    fprintf('원료는 결과에 유의미한 영향을 미칩니다.\n');
else
    fprintf('원료는 결과에 유의미한 영향을 미치지 않습니다.\n');
end


-----------------------------------------------------------------------

% 세 종류의 기계(A1,A2,A3)와 세 사람의 엔지니어(B1,B2,B3) 이 제품 품질에 미치는 영향을 알아보기 위하여
% 2회 반복이 있는 이원배치법에 의해 생산성을 측정한 결과 다음과 같은 자료를 얻었다.

% 11번.
% A에 대한 P-value 값은? (% 단위로 값 입력)

% 12번.
% B에 대한 P-value 값은? (% 단위로 값 입력)

% 13번.
% AB 의 교호작용에 대한 P-value 값은? (% 단위로 값 입력)

% 데이터 입력
A1 = [9, 14; 14, 16; 19, 22]; % 기계 A1의 데이터
A2 = [13, 16; 18, 26; 14, 18]; % 기계 A2의 데이터
A3 = [11, 12; 11, 17; 15, 16]; % 기계 A3의 데이터

% 데이터 정리
data = cat(3, A1, A2, A3); % 3D 배열: 엔지니어(행), 반복(열), 기계(층)
[a, r, b] = size(data); % a: 기계 수준, b: 엔지니어 수준, r: 반복 수
N = a * b * r; % 총 샘플 수

% (1) 총 평균 계산
Y_bar = mean(data(:)); % 전체 평균

% (2) 요인 A 제곱합 (SSA)
A_means = squeeze(mean(mean(data, 1), 2)); % 각 기계의 평균
SSA = b * r * sum((A_means - Y_bar).^2);

% (3) 요인 B 제곱합 (SSB)
B_means = squeeze(mean(mean(data, 2), 3)); % 각 엔지니어의 평균
SSB = a * r * sum((B_means - Y_bar).^2);

% (4) 교호작용 제곱합 (SSAB)
AB_means = squeeze(mean(data, 2)); % 각 기계-엔지니어 조합 평균
SSAB = sum(sum((AB_means - A_means' - B_means + Y_bar).^2)) * r;

% (5) 총 제곱합 (SST)
SST = sum((data(:) - Y_bar).^2);

% (6) 오차 제곱합 (SSE)
SSE = SST - SSA - SSB - SSAB;

% (7) 자유도 계산
df_A = a - 1; % 기계 자유도
df_B = b - 1; % 엔지니어 자유도
df_AB = (a - 1) * (b - 1); % 교호작용 자유도
df_E = a * b * (r - 1); % 오차 자유도

% (8) 평균제곱 계산
MS_A = SSA / df_A;
MS_B = SSB / df_B;
MS_AB = SSAB / df_AB;
MS_E = SSE / df_E;

% (9) F-value 계산
F_A = MS_A / MS_E;
F_B = MS_B / MS_E;
F_AB = MS_AB / MS_E;

% (10) P-value 계산
P_A = 1 - fcdf(F_A, df_A, df_E); % 기계에 대한 P-value
P_B = 1 - fcdf(F_B, df_B, df_E); % 엔지니어에 대한 P-value
P_AB = 1 - fcdf(F_AB, df_AB, df_E); % 교호작용에 대한 P-value

% 결과 출력
disp(['P-value (A): ', num2str(P_A * 100, '%.4f'), '%']);
disp(['P-value (B): ', num2str(P_B * 100, '%.4f'), '%']);
disp(['P-value (AB): ', num2str(P_AB * 100, '%.4f'), '%']);

