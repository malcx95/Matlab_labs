function d = distance(x0, y0, x1, y1)
    l = length(x0);
    d = zeros(l, l);
    for i = 1:l
        for j = 1:l
            d(i, j) = sqrt((x1 - x0(i,j))^2 + (y1 - y0(i,j))^2);
        end
    end
end