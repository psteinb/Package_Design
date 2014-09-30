#!/usr/bin/env Rscript
library(ggplot2)

dummy <- data.frame(Instability = c(1.,0,1,0), Abstractness = c(1.,0,0,1))
head(dummy)
blank <- qplot(Instability, Abstractness, data = dummy, geom = "blank") + ylab("Abstractness") + xlab("Instability") + theme(axis.title.x = element_text(face="bold", size=16), 	axis.title.y = element_text(face="bold", size=16)) + geom_abline(slope = -1, intercept = 1)
blank <- blank + geom_text(data = NULL, x = .55, y = .55, label = "main sequence", angle=315, size=16)
blank <- blank + geom_text(data = NULL, x = .82, y = .82, label = "zone\nof\nusefulness", angle=-45, size=12, lineheight=0.75)
blank <- blank + geom_text(data = NULL, x = .18, y = .18, label = "zone\nof\npain", angle=-45, size=12, lineheight=0.75)

ggsave(paste("blank_oometric.svg",sep=""),blank)	 