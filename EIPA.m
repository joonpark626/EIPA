% Justin Park 101013156

nx = 50;
ny = 50;

G = sparse(nx*ny, nx*ny);
% G(nx*ny, :) = 0;
% G(:, nx*ny) = 0;

domain = nx*ny;

for i = 1 : domain
    for j = 1 : domain
        if (i == j)
            G(i,j) = 1;
        else
            G(i,j) = 0;
        end
        n = j + (i - 1)*ny;
    end
end
figure(1)
spy(G)

[E,D] = eigs(G,9,'SM')
figure(2)
plot(D)
figure(3)
surf(E)