data = read.csv("csv files//database_birds.csv")
data_each_bird_table = table(data$data.Species.Name)
data_each_bird_df = as.data.frame(data_each_bird_table)
write.csv(data_each_bird_df, 'csv files//database_each_bird_count.csv')
bird_max_hit = subset(data_each_bird_df, data_each_bird_df$Freq == max(
  data_each_bird_df$Freq))
print(bird_max_hit)
print(bird_max_hit$Var1)

sorted_data = data_each_bird_df[order(data_each_bird_df$Freq),]
png(file = 'graphs//bird_barplot.png', width = 1080, height = 720,
    units = "px", pointsize = 12, bg = "white", res = 110,
    restoreConsole = TRUE)
barplot(tail(sorted_data$Freq, n=10), names.arg = tail(sorted_data$Var1, n = 10),
        xlab = 'Bird Species', ylab = 'No. of Strikes',
        border = 'black', main = 'No. of strikes by top 10 different bird species',  
        las=2, cex.names=.5, 
        col = viridis::viridis_pal(option = "magma", direction=-1)(10), 
        ylim = c(0, 50000))
dev.off()

