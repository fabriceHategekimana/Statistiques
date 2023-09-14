penguins <- read.csv("/home/fabrice/temp/penguins.csv")

penguins

unique(penguins$species)

unique(penguins$island)

penguins$bill_length_mm |> na.omit() |> mean()
penguins$bill_length_mm |> na.omit() |> median()

penguins$bill_depth_mm |> na.omit() |> mean()
penguins$bill_depth_mm |> na.omit() |> median()

penguins$bill_length_mm |> na.omit() |> density() |> plot()

unique(penguins$sex)

install.packages("ggplot2")

library("ggplot2")

penguins$bill_length_mm <- (penguins$bill_length_mm * c(1,-1))

pos_neg

penguins$bill_length_mm |> summary()
penguins$bill_length_mm |> length()

three_penguins <- penguins |> head(n = 3)

ggplot(three_penguins,aes(x=bill_length_mm, y=c("A", "B", "C")))+ 
  geom_bar(stat="identity", position="identity")+
  scale_y_continuous(limits = c(-60, 60)) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5, size = 15))+
  coord_flip()

p<-ggplot(data=three_penguins, aes(x=bill_length_mm, y=c("A", "B", "C"))) +
  geom_bar(stat="identity")
p

as.character(seq(1, 4))


