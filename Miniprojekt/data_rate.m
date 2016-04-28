function R = data_rate(SN, bandwidth)
    l = length(SN);
    R = zeros(l, l);
    for i = 1:l
        for j = 1:l
            curr = SN(i, j);
            if curr < 0.3
                R(i,j) = 0;
            elseif curr > 63
                R(i,j) = bandwidth * 6;
            else
                R(i, j) = bandwidth * log2(1 + curr);
            end
        end
    end
end