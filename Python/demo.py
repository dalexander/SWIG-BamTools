
import BamTools
import sys, os

print
print os.getpid()
print

r = BamTools.BamReader()
if len(sys.argv) > 1:
    r.Open(sys.argv[1])
else:
    r.Open("/Users/dalexander/Data/aligned_reads_2.bam")
assert r.IsOpen()

r.LocateIndex()
assert r.HasIndex()

aln = BamTools.BamAlignment()

for i in xrange(10):
    r.GetNextAlignment(aln)
    print aln.Name, aln.Length


print aln.GetUintTag("XS")

try:
    print aln.GetIntTag("XS")
except BamTools.BamToolsException as e:
    print e
except Exception as f:
    # We come here ... unfortunately it doesn't get the exception type wrapped correctly
    print f


h = r.GetHeader()
rgs = h.ReadGroups
