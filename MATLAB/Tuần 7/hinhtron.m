function I = hinhtron(A, r)
    I = 0;
    p = linspace(0, 2*pi, 1000);
    x = r*sin(p) + A(1);
    y = r*cos(p) + A(2);
    plot(x, y, A(1), A(2), '.b');
    text(A(1) + 0.2, A(2) + 0.1, 'A');
    axis square;
    axis([A(1)-r-1, A(1)+r+1, A(2)-r-1, A(2)+r+1]);
end