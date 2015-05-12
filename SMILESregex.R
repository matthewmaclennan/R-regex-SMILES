#List all C-C single bonds in the molecule C1C(C2(CC1)C)CC2C which are not number connections (i.e. ring closures)
apply(str_match_all("C1C(C2(CC1)C)CC2C","C[0-9%\\(]*(?=(C))")[[1]],1,function(x) paste0(x,collapse=""))
