function SN = signal_noise_ratio(d, P, sigma, K)
    l = length(d);
    SN = zeros(l, l);
    for i = 1:l
        for j = 1:l
            SN(i, j) = P/((1 + d(i, j))^K*sigma);
        end
    end
end