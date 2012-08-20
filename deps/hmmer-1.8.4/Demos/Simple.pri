# This is an example of a customized simple Dirichlet prior.
#

Simple    # Strategy (single Dirichlets)
Amino     # type of prior (Amino or Nucleic)

# Transitions
1                   # Single component
1.0                 #   with probability = 1.0
2.970 0.015 0.015   # m->m, m->i, m->d alpha's
1.770 1.170 0.060   # i->m, i->i, i->d alpha's
2.640 0.060 0.300   # d->m, d->i, d->d alpha's

## Match emissions
1                   # Single component
1.0                 #    with probability 1.0
1.743 0.669 0.937 0.991 0.795 1.772 0.672 0.738 1.610 1.707 0.295 0.809 1.014 0.765 0.818 1.392 1.171 1.294 0.210 0.598 

## Insert emissions
1                   # Single component
1.0                 #    with probability 1.0
17430 6690 9370 9910 7950 17720 6720 7380 16100 17070 2950 8090 10140 7650 8180 13920 11710 12940 2100 5980
