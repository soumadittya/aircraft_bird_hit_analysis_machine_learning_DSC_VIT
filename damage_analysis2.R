data = read.csv("csv files//x.csv")
num_col = ncol(data)
cat('number of column is', str(num_col))
for (i in num_col){
  col = data[i]
  print(col)
}