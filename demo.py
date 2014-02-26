
import BamTools
import sys

r = BamTools.BamReader()
r.Open(sys.argv[1])

aln = BamTools.BamAlignment()

for i in xrange(10):
    r.GetNextAlignment(aln)
    print aln.Name, aln.Length
