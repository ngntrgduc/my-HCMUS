n = input('nhap n: ');
k = input('nhap k: ');
fprintf('to hop n chap k la: %g', factorial(n) / (factorial(k) * factorial(n-k)));

% Cach dung ham for
% gtn = 1;
% gtk = 1;
% gtnk = 1;
% for i=1:n
%     gtn = gtn * i;
% end
% for i=1:k
%     gtk = gtk * i;
% end
% for i=1:(n-k)
%     gtnk = gtnk * i;
% end
% gt = gtn/(gtk*gtnk);
% fprintf('to hop n chap k la: %g', gt);