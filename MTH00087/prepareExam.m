clc
clear all
close all

% input('prompt'): nhập số, muốn nhập chuỗi thì chuỗi nhập vào phải nằm trong ''
% hoặc dùng input('prompt','s') để nhập chuỗi

% câu lệnh if else: if - elseif - else - end
% phép toán: +, -, *, /, ^, exp(), log()
% phép toán so sánh: ==, ~=, >, >=, <, <=
% phép toán logic:  && (and), || (or), ~ (not)
% math function: floor (làm tròn xuống), ceil (làm tròn lên), round (làm tròn tới số nguyên gần nhất)
% mod(x, y): tính phần dư của x/y
% vòng lặp for: for i = start:end | for i = start:step:end
% for i = [1 2 3]
%     disp(i);
% end
% vòng lặp while: while expression ... end
% câu lệnh switch-case: switch variable case ... otherwise ... end

% Vector
% length(v): số phần tử của vector v
% max(v): phần tử lớn nhất của vector v
% min(v): phần tử nhỏ nhất của vector v
% Nếu v là ma trận, thì max(v)/min(v) trả về vector hàng chứa phần tử lớn nhất/nhỏ nhất của mỗi cột của ma trận v

% Ma trận (Dấu ; kết thúc 1 dòng (hàng), dấu ',' hoặc khoảng trắng ngăn cách phần tử)
% A = [1 2 3; 4 5 6];
% Chuyển vị ma trận: A'
% Đường chéo ma trận: diag(A)
% Truy cập phần tử dòng i cột j (trị số bắt đầu từ 1): A(i,j)
% A(i) là phần tử thứ i duyệt theo chiều từ trái qua phải, trên xuống dưới
% size(A) trả về vector gồm: số hàng của ma trận và số cột của ma trận
% Sử dụng dấu : để trích các dãy phần tử
% fprintf('A(2, :) = ');
% disp(A(2, :))
% fprintf('A(2, 2:3) = ');
% disp(A(2, 2:3))
% Ghép ma trận theo chiều dọc (hay thêm dòng)
% B = [6 7 8];
% disp('[A; B] = ');
% disp([A; B]);
% Ghép ma trận theo chiều ngang (hay thêm cột)
% B = [10; 20];
% disp('[A B] = ');
% disp([A B]);
% Xoá dòng xoá cột dùng = [] (không thể xoá được 1 phần tử, phải xoá 1 cột hoặc hàng)
% A(2, :) = [];
% disp('A = ');
% disp(A);
% zeros(m, n): tạo ma trận không với m dòng n cột
% ones(m, n): tạo ma trận một với m dòng n cột
% eye(m, n): tạo ma trận đường chéo = 1 với m dòng n cột 
% eye(n): tạo ma trận đơn vị 
% rand(m, n): tạo ma trận m dòng n cột với các phần tử ngẫu nhiên 
disp(round(rand(1, 5) * 10)); % tạo 5 phần tử ngẫu nhiên từ 0 tới 10
% linspace(a, b, n): tạo ma trận gồm b phần tử phân bố đều từ a tới n (nếu không có n thì sẽ có 100 phần tử)
% numel(A): đếm số phần tử của ma trận
% A*B: nhân 2 ma trận A và B
% A/B: chia 2 ma trận A và B
% A.*B: Nhân từng phần tử của 2 ma trận A và B
% .* : mũ cho từng phần tử của mảng
% det(A): định thức của ma trận
% tril(A): ma trận tam giác dưới
% triu(A): ma trận tam giác trên
% inv(A): ma trận nghịch đảo của A
% rank(A): hạng của ma trận A

% Plot
% ezplot('sin(x)'): vẽ hàm sơ cấp
% plot(x, y1, x, y2, ...): vẽ đồ thị y1, y2 với x
% hold on; : lưu giữ đồ thị hiện tại, dùng để vẽ đồ thị mới trên đồ thị cũ
% axis([xmin xmax ymin ymax]): lệnh axis
% xlabel, ylabel, title, legend: chú thích đồ thị
% subplot(p,q,i): tạo bảng vẽ p x q, và vẽ ở bảng thứ i
% bar(x,y): vẽ đồ thị cột đứng
% pie(x): vẽ đồ thị dạng hình tròn
% [X,Y] = meshgrid(x,y): đồ thị lưới của hàm 2 biến z = f(x, y)

% Một số ví dụ về vẽ mặt:
x = -2:0.5:2;
y = -2:0.4:2;
[X,Y] = meshgrid(x,y);
Z = X.*exp(-X.^2 - Y.^2);
figure(1);
subplot(2,2,1);
mesh(X,Y,Z)
title('mesh');
subplot(2,2,2);
meshc(X,Y,Z)
title('meshc');
subplot(2,2,3);
meshz(X,Y,Z)
title('meshz');
subplot(2,2,4);
waterfall(X,Y,Z)
title('waterfall');

figure(2);
subplot(2,2,1);
surf(X,Y,Z)
title('surf');
subplot(2,2,2);
surfc(X,Y,Z)
title('surfc');
subplot(2,2,3);
surfl(X,Y,Z)
title('surfl');
subplot(2,2,4);
plot3(X,Y,Z)
title('plot3');

% symbolic
% syms x y: khai báo biến symbolic
% diff(y, n): đạo hàm cấp n của y (nếu không có n thì đạo hàm cấp 1)
% diff(y, x, n): đạo hàm cấp n của y theo biến x
% int(y): tính tích phân của y
% int(y, a, b): tính tích phân từ a tới b của y
% int(y, x): tính tích phân của y theo biến x
% limit(f, x, a): giới hạn của hàm f khi x tiến tới a
% limit(f, x, a, 'left'): giới hạn trái của hàm f khi x tiến tới a
% limit(f, x, a, 'right'): giới hạn phải của hàm f khi x tiến tới a
% solve(f): giải phương trình f(x) = 0
% solve(f, a): giải phương trình f theo biến a
% solve('f(x) = g(x)'): giải phương trình f(x) = g(x) (đặt trong dấu '')
% solve('f(x)', 'g(x)', ...): giải nhiều hệ phương trình