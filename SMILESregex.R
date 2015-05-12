#List all C-C single bonds in the molecule C1C(C2(CC1)C)CC2C which are not number connections (i.e. ring closures)
require(stringr)
apply(str_match_all("C1C(C2(CC1)C)CC2C","C[0-9%\\(]*(?=(C))")[[1]],1,function(x) paste0(x,collapse=""))
#Which is the same as

#List positions in string for each match

#List all positions in the match as igraph two-column matrix
##First, define starting position and start of capture position. cbind() values to make a 2 column matrix
start<-unlist(gregexpr("C[0-9%\\(]*(?=(C))","C1C(C2(CC1)C)CC2C",perl=T))
capture.start<-attr(gregexpr("C[0-9%\\(]*(?=(C))","C1C(C2(CC1)C)CC2C",perl=T)[[1]],"capture.start")
links<-cbind(start,capture.start)
#This 2 column matrix should be adequate for graph.edgelist() in the igraph package.
#List all C-C single bonds in the molecule C1C(C2(CC1)C)CC2C
#For matching atoms with numbers to show their connectivity, 
#Display strings with numbers attached
regmatches("C1C(C2(CC1234)C)C%519%12CC",gregexpr("[A-Z][0-9]+|C(%[0-9]{2,})+","C1C(C2(CC1234)C)C%519%12CC",perl=T))
#positions of matches
list1<-list()
for(i in 1:4){
+ list1[[i]]<-seq(gregexpr("[A-Z][0-9%]+","C1C(C2(CC1234)C)C12%519CC",perl=T)[[1]][i]+1,length=attr(gregexpr("[A-Z][0-9%]+","C1C(C2(CC1234)C)C12%519CC",perl=T)[[1]],"match.length")[i])
+ }
list1
#
#Get all numbers and order them in a vector
