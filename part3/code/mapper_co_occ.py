#!/usr/bin/env python
"""mapper.py"""

import sys

# CC
# top_keywords = ["company","facebook","people","app","user","google","time","service","million","apple"]

# NYT
top_keywords = ["company","time","york","people","trump","president","call","day","amazon","city"]

# twitter
# top_keywords = ["uber","live","iphone","amazon","time","driver","check","watch","play","love"]


# input comes from STDIN (standard input)
for line in sys.stdin:
    # remove leading and trailing whitespace
    line = line.strip()

    for tk1 in top_keywords:

        for tk2 in top_keywords:

            if tk1 != tk2 and tk1 in line.lower() and tk2 in line.lower():
                # write the results to STDOUT (standard output);
                # what we output here will be the input for the
                # Reduce step, i.e. the input for reducer.py
                #
                # tab-delimited; the trivial word count is 1
                print '%s-%s\t%s' % (tk1,tk2, 1)
        