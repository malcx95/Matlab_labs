function d = distance(x0, y0, x1, y1)
    l = length(x0);
    d = zeros(l, l);
    lx1 = length(x1);
    distances = zeros(1, lx1);
    for i = 1:l
        for j = 1:l
            for k = 1:lx1
                distances(k) = sqrt((x1(k) - x0(i,j))^2 + (y1(k) - y0(i,j))^2);
            end
            d(i, j) = min(distances);
        end
    end
end