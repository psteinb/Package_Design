#!/usr/bin/env Rscript
argv = commandArgs(TRUE)

if(length(argv) < 1){
    stop("Usage: dep_metric.R <data_file> \n")
}


library(ggplot2)

inputfile <- argv[1]
paste("loading ", inputfile)

dep_data <- read.table(inputfile, header = T, sep = ' ')
plot_data <- dep_data[which(dep_data$Abstractness <= 1.),	]

boxplot <- ggplot(plot_data, aes(x=Instability, y=Abstractness )) 
boxplot <- boxplot + geom_point()
boxplot <- boxplot + ylab("Abstractness") + xlab("Instability") + theme(axis.title.x = element_text(face="bold", size=16), 	axis.title.y = element_text(face="bold", size=16))
ggsave(paste(inputfile,"_oometric.svg",sep=""),boxplot)
