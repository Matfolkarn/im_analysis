data = [
    3 3 3 3 3 2 2 2 2 2 3 3 3 3 3;
    3 3 1 2 1 0 0 0 0 0 1 2 3 3 3;
    3 3 2 0 0 0 0 0 0 0 0 0 2 3 3;
    3 2 0 0 1 0 0 0 0 0 1 0 0 2 3;
    3 1 0 2 3 1 0 0 0 3 3 1 0 1 3;
    2 0 0 3 3 2 0 0 1 3 3 2 0 0 2;
    2 0 0 2 3 1 0 0 0 2 3 1 0 0 2;
    2 0 0 0 0 0 0 0 0 0 0 0 0 0 2;
    2 0 0 0 0 0 0 0 0 0 0 0 0 0 2;
    2 0 1 2 1 1 0 0 0 1 1 2 2 0 2;
    3 1 0 2 3 3 3 3 3 3 3 3 0 1 3;
    3 2 0 0 2 3 3 3 3 3 2 0 0 2 3;
    3 3 2 0 0 2 3 3 3 2 0 0 2 3 3;
    3 3 3 2 1 0 0 0 0 0 1 2 3 3 3;
    3 3 3 3 3 2 2 2 2 2 3 3 3 3 3
];

% Display the matrix
disp(data);
L = data>1;
disp(L);