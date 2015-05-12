#List all C-C single bonds in the molecule C1C(C2(CC1)C)CC2C which are not number connections (i.e. ring closures)
require(stringr)
apply(str_match_all("C1C(C2(CC1)C)CC2C","C[0-9%\\(]*(?=(C))")[[1]],1,function(x) paste0(x,collapse=""))
#Which is the same as

#List positions in string for each match

#List all positions in the match as igraph two-column matrix
##First step finds all reasonable element names
gregexpr("[A-Z][a-z]{,2}","C1C(C2(CC1)C)CC2C")
##Second step sets up matrix of two columns and rownumber equal to the number of letter matches
matrix(0,ncol=2,nrow=length(unlist(gregexpr("[A-Z][a-z]{,2}","C1C(C2(CC1)C)CC2C"))))
#List all C-C single bonds in the molecule C1C(C2(CC1)C)CC2C
