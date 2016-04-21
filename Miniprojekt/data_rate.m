function R = data_rate(SN)
    l = length(SN);
    B = 10e+6;
    R = zeros(l, l);
    for i = 1:l
        for j = 1:l
            curr = SN(i, j);
            if curr < 0.3
                R(i,j) = 0;
            elseif curr > 63
                R(i,j) = B * 6;
            else
                R(i, j) = B * log2(1 + curr);
            end
        end
    end
end