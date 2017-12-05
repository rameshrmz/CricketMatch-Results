# Overs and Runs Values:
overs <- c(1,2,3,4,5,6,7,8,9,10)
runs  <- c(6,2,6,8,2,10,15,5,8,9)

# Draw Bar plot for runs per over for 10 overs
xx <- barplot(runs, xlab = "Overs", ylab = "Runs", col = "red", names.arg = c(1,2,3,4,5,6,7,8,9,10), ylim = c(0, 1.1*max(runs)))

# Place the bar values above the bars
text(xx, runs, labels = runs, pos = 3, cex = 0.8, col = "darkblue")
