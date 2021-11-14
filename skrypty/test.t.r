# Parametry
conf <- 0.9
alpha <- 1 - conf
times <- 1000

# Wynik
positive <- 0
negative <- 0

# Główna pętla wykonująca ileśtam razy test
for(i in 1:times){
  test <- t.test(rnorm(100, mean = 0), mu = 0, conf.level = conf)
  p <- test[["p.value"]]
  if(p > alpha){
    positive <- positive + 1
  }else{
    negative <- negative + 1
  }
}

# Print wynik
print(positive)
print(negative)