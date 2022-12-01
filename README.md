# Dispersion Bound for BLER of finite blocklength codes for BI-AWGN channels
This is a MATLAB script for obtaining achievable block/frame error rate (BLER/FER) bound for finite blocklength codes based on channel dispersion concept and by considering normal approximation (NA). 

I have used this bound for comparison in the numerical results of the following papers:

M. Rowshan, A. Burg and E. Viterbo, "Polarization-Adjusted Convolutional (PAC) Codes: Sequential Decoding vs List Decoding," in IEEE Transactions on Vehicular Technology, vol. 70, no. 2, pp. 1434-1447, Feb. 2021, doi: 10.1109/TVT.2021.3052550.

https://ieeexplore.ieee.org/abstract/document/9328621

M. Rowshan and E. Viterbo, "List Viterbi Decoding of PAC Codes," in IEEE Transactions on Vehicular Technology, vol. 70, no. 3, pp. 2428-2435, March 2021, doi: 10.1109/TVT.2021.3059370.

https://ieeexplore.ieee.org/document/9354542

M. Rowshan, S.H. Dau and E. Viterbo, "Improving Error Coefficient of Polar Codes," in IEEE Information Theory Workshop, Nov. 2022.

https://arxiv.org/abs/2111.08843

If you find this algorithm useful, please cite one of the above papers. Thanks.


This bound is also called PPV meta-converse bound - Normal Approximation (NA) for BI-AWGN channel. The capacity of the binary-input AWGN channel and the channel dispersion coefficient are calculated based on Laplace transform suggested in 

T. Erseghe, "Coding in the finite-blocklength regime: Bounds based on Laplace integrals and their asymptotic approximations,” IEEE Trans. Inf. Theory, vol. 62, no. 12, pp. 6854–6883, Dec. 2016.

Please report any bugs to mrowshan at ieee dot org
