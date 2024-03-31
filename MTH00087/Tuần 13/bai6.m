theta = linspace(-2 * pi, 2 * pi, 500);

% Cau 1
figure(1);
polar(theta, cos(2 * theta));

% Cau 2
figure(2);
polar(theta, 2 * cos(theta));

% Cau 3
figure(3);
polar(theta, 1 + cos(theta));

% Cau 4
figure(4);
polar(theta, sin(2*theta) .* cos(2*theta));