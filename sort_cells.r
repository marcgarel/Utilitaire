#Sort output cellC12
#Author : MG
#V.1.0

####################################################

#main 

#set working directory with command 

files <- list.files(pattern=".CSV$") 
    for(i in files) { 
     x <- read.csv(i, na.strings="no value", skip=1, header=F, sep=";")
     assign(i, x)
     print(i)
     area=x[,2]
     
     y=x[x$V2>100&x$V2<530,]
     print(length(y[,1]))
     
     sample_name=strtrim(i,9)
     
     write.table(y,paste(sample_name, "_cor.txt"), quote=FALSE, sep="\t")
      }