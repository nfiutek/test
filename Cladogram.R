#                            Creating Cladograms in R

#Install/Load Packages

#ape is a program used in r that has functions for manipulating phylogenetic trees
install.packages("ape")
library(ape)

#phangorn is a program in r that uses estimation methods for phylogenetic tree building
install.packages("phangorn")
library(phangorn)

#seqinr is a program in r that helps read in DNA and protien data files 
install.packages("seqinr")
library(seqinr)


#Import sequence data 

smc<-read.dna("turbeville.dna",format = "interleaved")
head(smcall)

#Model Testing and Distance Matrice

#using the phangorn program to create a distrance matrix of our data
mt<-modelTest()
print(mt)
dna_dist<-dist.ml(,model = "JC69")

#Neighbor joining, UPGMA, and Maximim Parsimony
#UPGMA is
_UPGMA<- upgma(dm)
plot(_UPGMA, main="UPGMA")

#Neighbor joining is
_NJ<- NJ(dm)
plot(_NJ, main="Neighbor Joining")

#Testing which tree is the best

#parsimony function
parsimony(_UPGMA)
parsimony(_NJ)
###

#Maximum Likelyhood
