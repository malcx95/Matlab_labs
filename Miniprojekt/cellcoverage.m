function datarates = cellcoverage(x0, y0, x1, y1, bandwidth, P, sigma2, kappa)
    distances = distance(x0, y0, x1, y1);
    SN = signal_noise_ratio(distances, P, sigma2, kappa);
    datarates = data_rate(SN, bandwidth);
end