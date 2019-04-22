#!/usr/bin/env python
"""reducer.py"""

from operator import itemgetter
import sys


word = None

data_store = {}

# input comes from STDIN
for line in sys.stdin:
    # remove leading and trailing whitespace
    line = line.strip()

    # parse the input we got from mapper.py
    word, count = line.split('\t', 1)

    # convert count (currently a string) to int
    try:

        if word not in data_store:
            data_store[word] = 1
        else:
            data_store[word]+= 1

    except Exception as e: 
        # count was not a number, so silently
        # ignore/discard this line

        continue

sorted_d = sorted(((value, key) for (key,value) in data_store.iteritems()),reverse=True)
for dt in sorted_d:
    print'%s\t%s' % (dt[0], dt[1])
