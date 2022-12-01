% Dispersion Bound for Finite Blocklength Codes over BI-AWGN Channel %%%%%%%%%%%%%%%%%%%%%
% Copyright (c) 2022, Mohammad Rowshan
% All rights reserved.
%
% Redistribution and use in source and binary forms, with or without modification, 
% are permitted provided that:
% the source code retains the above copyright notice, and te redistribtuion condition.
% 
% Freely distributed for educational and research purposes
%
% This script was used in doi: 10.1109/TVT.2021.3052550
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

N=2^7;  % block length
R=0.5;  % code rate
EbN0dB=1:0.1:4;  % the target range of SNR per info bit (Eb/N0) in dB
EbN0=10.^(EbN0dB/10); 
SNR=EbN0*2*R; 
Zmin = -9; Zmax = 9;
epsilonNA = [];
for rho = SNR
    f = @(z) exp(-z.^2/2)/sqrt(2*pi) .* (log2(2) - log2(1+exp(-2*rho-2*sqrt(rho)*z)));
    C = integral(f, Zmin, Zmax);    % channel capacity
    g = @(z) exp(-z.^2/2)/sqrt(2*pi) .* (log2(2) - log2(1+exp(-2*rho-2*sqrt(rho)*z))-C).^2;
    V = integral(g, Zmin, Zmax);    % channel dispercion
    epsilonNA(end+1)=qfunc((C-R+0.5/N*log2(N))./(sqrt(V/N))); 
end
figure
semilogy(EbN0dB,epsilonNA);
grid on;
title(['Dispersion Bound based on Normal Approximation (NA) for (' num2str(N) ',' num2str(N*R) ')']);
xlabel('E_b/N_0 [dB]') 
ylabel('BLER') 
legend('Dispersion Bound');
