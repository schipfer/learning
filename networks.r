library("igraph", lib.loc="~/R/win-library/3.1")
g<-(0--43, 0--56, 1--2, 1--6, 2--5, 2--14, 3--4, 3--17,4--5, 4--16, 5--15, 5--14, 6--7, 6--14, 7--8, 7--14, 8--9, 8--11, 10--11, 10--24, 11--12, 11--24, 11--25, 12--13, 12--23, 13--14, 13--22, 14--21, 15--21, 15--18, 16--17, 16--18, 17--19, 18--20, 19--20, 20--21, 20--35, 20--36, 21--33, 22--26, 22--27, 23--25, 23--26, 24--25, 25--30, 26--31, 27--32, 27--33, 28--29, 28--30, 29--30, 29--43, 30--31, 32--42, 33--34, 35--38, 36--37, 36--38, 37--39, 38--39, 38--41, 38--40, 39--40, 39--47, 40--46, 34--41, 42--43, 42--44, 43--44, 44--55, 45--55, 45--52, 46--51, 47--48, 47--50, 48--49, 48--50, 49--50, 50--51, 51--52, 52--53, 53--54, 53--55, 55--56, 34--42, 34--45, 35--36)
V(g)$name = c("Bayonne","Calais", "Lille", "Strasbourg", "Metz", "Reims", "Amiens", "Rouen", "Caen", "Cherbourg", "Brest", "Rennes", "Le Mans", "Chartres", "Paris", "Troyes", "Nancy", "Mulhouse", "Langres", "Besancon", "Dijon", "Sens", "Orleans", "Angers", "Vannes", "Nantes", "Tours", "Vierzon", "La Rochelle", "Saintes", "Niort", "Poitiers", "Limoges", "Vichy", "Clermont-Fd", "Macon", "Bourg-en-Bresse", "Geneve", "Lyon", "Grenoble", "Valence", "St-Etienne", "Brive", "Bordeaux", "Montauban", "Millau", "Avignon", "Digne-les-bains", "Nice", "Toulon", "Marseille", "Nimes", "Montpellier", "Narbonne", "Perpignan", "Toulouse", "Pau")[ as.integer(V(g)$name) + 1 ]

c("Bayonne","Calais", "Lille", "Strasbourg", "Metz", "Reims", "Amiens", "Rouen", "Caen", "Cherbourg", "Brest", "Rennes", "Le Mans", "Chartres", "Paris", "Troyes", "Nancy", "Mulhouse", "Langres", "Besancon", "Dijon", "Sens", "Orleans", "Angers", "Vannes", "Nantes", "Tours", "Vierzon", "La Rochelle", "Saintes", "Niort", "Poitiers", "Limoges", "Vichy", "Clermont-Fd", "Macon", "Bourg-en-Bresse", "Geneve", "Lyon", "Grenoble", "Valence", "St-Etienne", "Brive", "Bordeaux", "Montauban", "Millau", "Avignon", "Digne-les-bains", "Nice", "Toulon", "Marseille", "Nimes", "Montpellier", "Narbonne", "Perpignan", "Toulouse", "Pau"))
###https://gist.github.com/briatte/d011b95d7d9a88507f35

##Louvain Algorithm optimise how many edges to break for max. modularity


g1 <- graph( edges=c(1,2, 2,3, 3, 1), n=3, directed=F )
plot(g1)
g2 <- graph( edges=c(1,2, 2,3, 3, 1), n=10 )
plot(g2)
g3 <- graph( c("John", "Jim", "Jim", "Jill", "Jill", "John"))

data(karate)
#for reproducible purposes
#http://stackoverflow.com/questions/16390221/how-to-make-grouped-layout-in-igraph
set.seed(23548723)
##karateLayout <- layout_with_fr(karate)
par(mar = c(0,0,2,0))
plot(karate, vertex.size = 10, vertex.color = "steelblue4", edge.width = 1, 
     vertex.label = NA, edge.color = "darkgrey",
     main = "Zachary's karate club network" )

fastgreedy.community(karate)

Communitykarate <- cluster.distribution(karate)
#prettyColors <- c("turquoise4", "azure4", "olivedrab","deeppink4")
#communityColors <- prettyColors[community.to.membership(Communitykarate)]#
#plot(x = Communitykarate, y = karate, edge.width = 1, vertex.size = 10, 
     #vertex.label = NA, mark.groups = NULL, layout = karateLayout, col = communityColors,
     #main = "Communities in Zachary's karate club network",
     #edge.color = c("darkgrey","tomato2")crossing(Communitykarate, karate) + 1])

alpha.centrality(karate)
Communitykarate
