mra <- read.table("accuracy.txt", header=TRUE)
p <- ggplot(mra, aes(Number, Accuracy))

library("ggplot2")
p  + geom_point(aes(colour = Model,shape = Model), size = 5) + theme_bw() + geom_line(aes(colour=Model)) + opts(axis.text.x=theme_text(size=12), axis.text.y=theme_text(size=12), axis.title.x=theme_text(size=14), axis.title.y=theme_text(size=14, angle=90), lengend.text = theme_text(size=14) )
ggsave(file="accuracy.pdf")
