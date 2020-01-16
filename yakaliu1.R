#import package
library(animint2)
library(ggplot2)

#get data
data(WorldBank,package="animint2")
WorldBank1975<-subset(WorldBank,year==1975)
tail(WorldBank1975)
dim(WorldBank1975)

#generate scatter plot
scatter <- ggplot()+
     geom_point(
     mapping=aes(x=life.expectancy, y=fertility.rate, color=region),
     data=WorldBank1975)
scatter

#using animint
animint(scatter)

#publish on github
viz<-animint(scatter)
animint2gist(viz)
