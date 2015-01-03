#!/usr/bin/python

def stopwatch ( atom = .01 ):
    import time, sys, math

    start = time.time()
    last = start
    sleep = atom/2
    fmt = "\r%%.%sfs" % (int(abs(round(math.log(atom,10))))  if atom<1 else "")
    while True:
        curr = time.time()
        subatom = (curr-last)
        if subatom>atom:
            # sys.stdout.write( "\r%.2fs" % (curr-start))
            sys.stdout.write( fmt % (curr-start))
            sys.stdout.flush()
            last = curr
        else:
            time.sleep(atom-subatom)

stopwatch()
