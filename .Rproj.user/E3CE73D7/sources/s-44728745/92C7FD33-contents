data = read.csv("csv files//extracted_damages.csv")
num_col = ncol(data)
df = data.frame(damage_part = c(), total_hit = c())
i = 1
while(i < (num_col + 1)){
  col = data[i]
  name = names(data)[i]
  total = sum(col)
  temp_df = data.frame(damage_part = name, total_hit = total)
  df = rbind(df, temp_df)
  i = i+1
}

df$damage_part = gsub('.Damage', '', df$damage_part)
write.csv(df, 'csv files//data_count_damage.csv')
highest_affected_part = subset(df, df$total_hit == max(df$total_hit))
cat('The highest affected part ------> ', highest_affected_part$damage_part, 'Damage')