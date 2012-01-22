import sys

plen = 77
slides = 25

for i in range(1, slides + 1):
    barlen = int((i / slides) * plen)
    sys.stdout.write("█" * barlen)
    sys.stdout.write("░" * (plen - barlen))
    sys.stdout.write(" %02d" % i)    
    sys.stdout.write("\n")
