mydata <- data.frame(
  id = c(1, 2, 3, 4, 5, 6, 7),
  weight = c(20, 27, 24, 22, 23, 25, 28),
  bp = c(140, 130, 120, 134, 100, 116, 143),
  locality = c("urban", "rural", "urban", "urban", "rural", "rural", "urban"),
  smoking = c("no", "yes", "no", "yes", "yes", "no", "yes"),
  tumour = c("small", "small", "large", "small", "large", "small", "large")
)

plot(mydata$weight, mydata$bp, xlab = "Weight", ylab = "Blood Pressure", main = "Weight vs. Blood Pressure")

counts <- table(mydata$smoking, mydata$tumour)
barplot(counts, 
        main = "Smoking vs. Tumour",
        xlab = "Smoking",
        ylab = "Count",
        col = c("darkblue", "red"),
        legend = rownames(counts),
        beside = TRUE)
