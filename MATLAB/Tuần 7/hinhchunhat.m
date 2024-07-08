function I = hinhchunhat(A, d, r)
    B = [A(1), A(2) + d];
    D = [A(1) - r, A(2)];
    C = [D(1), B(2)];
    X = [A' B' C' D' A'];

    line(X(1, :), X(2, :));
    
    text(A(1) + 0.1, A(2) - 0.1, 'A');
    text(B(1) + 0.1, B(2) + 0.1, 'B');
    text(C(1) - 0.2, C(2) + 0.2 , 'C');
    text(D(1) - 0.2, D(2) - 0.2, 'D');
    axis equal;
    axis ([D(1) - 1, A(1) + 1, A(2) - 1, B(2) + 1]);
end