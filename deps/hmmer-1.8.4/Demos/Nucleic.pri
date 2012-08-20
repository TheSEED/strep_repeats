# This is an example of a customized simple Dirichlet prior,
# for RNA or DNA.

Simple      # Strategy (simple, single Dirichlet)
Nucleic     # Type of prior (Amino or Nucleic)

# State transitions
# Values are Dirichlet alpha terms, proportional to
# mean frequencies.
#
1                  # Single component,
1.0                # with probability 1.0
2.880 0.060 0.060  # m->m, m->i, m->d 
1.770 1.170 0.060  # i->m, i->i, i->d
2.640 0.060 0.300  # d->m, d->i, d->d

# Match emission vector
1                       # Single component,
1.0                     #  with probability 1
1.000 1.000 1.000 1.000 # ACGT

# Insert emission vector
# High alphas effectively hardwire insert emissions
1                            # Single component,
1.0                          #  with probability 1.0
10000. 10000. 10000. 10000.  # ACGT


