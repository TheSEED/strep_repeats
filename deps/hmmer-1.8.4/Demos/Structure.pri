# This is an example structural mixture 

STRUCT       # A structure-based mixture prior
Amino        # for proteins.

# First are the transition mixtures.
#
2   # 2 mixtures

# transition mixture 1 - few gaps
#
1.4129  1.5093  0.9553  0.2306     # perceptron weights: bias, E, H, SA
34.9799    0.00223637  0.0456661   # m->m m->i m->d
2.61166   12.5412      0.00343395  # i->m i->i i->d
0.0842934  0.000110474 0.161144    # d->m d->i d->d
                                   
# transition mixture 2 - lots of gaps
#
-0.4454 -0.0605  -0.6015  0.3357   # perceptron weights: bias, E, H, SA
4.06323  0.251117  0.525515        # m->m m->i m->d
1.83291  3.48332   0.0270406       # i->m i->i i->d
0.746496 0.0485157 0.433166        # d->m d->i d->d


# Match emissions
# Per mixture, first line is perceptron weights bias, E, H, SA
# next line is 20 alphas for A..Y
#
5    # 5 mixtures

# mix 1 likes accessible cysteines 
-0.0978  0.0456  -0.6953 2.0663
13.368 2923.213 0.293 0.332 0.789 1.519 0.473 1.243 0.289 1.551 0.990 0.433 0.566 0.393 0.310 1.618 2.801 2.796 0.432 0.568 

# Mix 2 likes solvent-exposed residues; Ala, Asp, Glu, Gly, Lys, Asn, Arg, Ser, Thr
0.7453 0.0071  0.5324  6.1060  
0.247 0.013 0.280 0.271 0.039 0.250 0.070 0.061 0.304 0.096 0.035 0.218 0.148 0.168 0.162 0.279 0.228 0.100 0.020 0.064 

# Mix 3 is buried Ala/Gly/Ser/Thr
-0.1997  -0.2349  1.7820 -8.6385
577.638 0.002 1.281 1.073 0.087 125.160 0.049 0.343 1.053 5.082 0.014 0.536 0.577 0.724 0.325 92.578 17.997 1.019 0.000 0.182 

# Mix 4 is buried Ala/Ile/Val (fairly rare)
-0.9960  2.6519  0.3427  -2.8808
4.776 0.191 0.252 0.365 0.418 0.310 0.163 75.919 0.245 3.679 0.494 0.371 0.432 0.247 0.229 0.693 1.767 158.490 0.095 0.263 

# Mix 5 is a common catch-all for everything else.
2.6848  0.5548  0.8311 5.0195
0.092 0.027 0.018 0.016 0.103 0.065 0.028 0.122 0.007 0.190 0.054 0.021 0.034 0.019 0.026 0.048 0.066 0.137 0.030 0.077 

# Insert emissions
# high-alpha (hardwired) single mixture
1
1.0 0.0 0.0 0.0
17430 6690 9370 9910 7950 17720 6720 7380 16100 17070 2950 8090 10140 7650 8180 13920 11710 12940 2100 5980
