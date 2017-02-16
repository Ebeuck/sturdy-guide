#SNA Commands for R
library(sna) # Loads the SNA Library
gplot(adjname) # Draws a graph of the network
degree(adjname) # Computes the total degrees from an adjacenity matrix
pstar(adjname, effects = c("indegree","outdegree")) # Computes various network effects
evcent(adjname) # Computes Eigenvector Centrality from an adjacency matrix
betweenness(adjname) # Computes betweenness centrality
closeness(adjname) # Computes closeness centrality
geodist(adjname) # Computes a matrix of geodesic path counts and a matrix of geodesic distances

#Example Network Files row of 10 AND columns of t10 (1s and 0s)

#Example Run Through (loading required libraries, reading data, making it as a mtrix to a graph)
library(sna)
library(foreign)
org <- read.dta("http://www.ats.ucla.edu/stat/sna/orgmat.dta")
org <- as.matrix(org)
gplot(org)

#Example of Tests on the network
#total degrees
#Interpretation of degree:
degree(org)
#indegree
#Interpretation of indegree:
pstar(org,effects=c("indegree"))
#outdegree
#Interpretation of outdegree:
pstar(org,effects=c("outdegree"))
#eigenvector centrality
#Interpretation of eigenvector centrality:
evcent(org)
#betweenness centrality
#Interpretation of betweenness centrality:
betweenness(org)
#closeness centrality
#Interpretation of closeness centrality:
closeness(org)
#creating the geodesic path count and distance matrix
#Interpretation of geodist:
geodist(org)