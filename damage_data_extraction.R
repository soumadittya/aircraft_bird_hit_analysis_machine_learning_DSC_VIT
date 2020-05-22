data = read.csv('csv files//database.csv')
data_damage = data[, grepl("Damage", names(data))]
write.csv(data_damage, 'csv files//extracted_damages.csv', row.names = FALSE)