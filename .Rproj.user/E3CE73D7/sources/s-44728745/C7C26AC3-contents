data = read.csv("csv files//database_birds.csv")
data_each_bird_table = table(data$data.Species.Name)
data_each_bird_df = as.data.frame(data_each_bird_table)
write.csv(data_each_bird_df, 'csv files//database_each_bird_count.csv')
bird_max_hit = subset(data_each_bird_df, data_each_bird_df$Freq == max(
  data_each_bird_df$Freq))
print(bird_max_hit)
print('Max number of hits are by')
print(bird_max_hit$Var1)


