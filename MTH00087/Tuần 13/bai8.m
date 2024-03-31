t = linspace(0, 2 * pi, 500);
x = 2 * sin(t);
y = 3 * cos(t);

subplot(2, 2, 1);
plot(x, y, '.r');
title('Elip axis tight');
legend('x^2/4+y^2/9=1');
axis tight;

subplot(2, 2, 2);
plot(x, y, '-g');
title('Elip axis square');
legend('x^2/4+y^2/9=1');
axis square;

subplot(2, 2, 3);
plot(x, y, 'xb');
title('Elip axis normal');
legend('x^2/4+y^2/9=1');
axis normal;

subplot(2, 2, 4);
plot(x, y, 'oc');
title('Elip axis equal');
legend('x^2/4+y^2/9=1');
axis equal;