# Learning-R
# Learning R language to explore about Data Analytics and statistics
# Draw plot for India vs Pakistan 10 overs Cricket Match.
# Step 1: Enter the Overs, India Score and Pakistan Score Manually.
Overs_indvspak 	  <- c(1,2,3,4,5,6,7,8,9,10)
      Ind_score	  <- c(5,11,16,25,36,39,50,63,75,90)
      Pak_score		<- c(3,13,25,28,31,36,40,46,51,60)

# Step 2: Create a Data frame using above information.
First_match <- data.frame(Overs = Overs_indvspak, 
                         India_score = Ind_score,
                         Pakistan_Score = Pak_score)

# Step 3: Find the results based on Both Team Scores.
if(max(First_match$India_score) > max(First_match$Pakistan_Score))
{
  Victory_margin <- max(First_match$India_score) - max(First_match$Pakistan_Score)
	result_indvspak = paste("India Won by", Victory_margin,"runs")
} else if (max(First_match$India_score) < max(First_match$Pakistan_Score)) {
  Victory_margin <- max(First_match$Pakistan_Score) - max(First_match$India_score)
  result_indvspak = paste("Pakistan Won by",Victory_margin,"runs")
} else { result_indvspak = "Match Drawn"}


# Step 4: Create a plot for using Indian Team Scorecard(Runs per Over) from First_match Data Frame:
plot(First_match$Overs, First_match$India_score, xlab = "Overs", ylab = "Runs", main = "First 10 Over Match", pch = 20, cex.axis = 0.8, xlim = c(1,10), ylim = c(1,100), xaxt = 'n', col = "blue", cex.axis = 0.7, lty = 1, type = "o") + axis(side = 1, at=c(1:10), cex.axis = 0.7)

# Similar like plot for Pakistan Team Scorecard from First_match Data Frame:
plot(First_match$Overs, First_match$Pakistan_Score, xlab = "Overs", ylab = "Runs", main = "First 10 Over Match", pch = 20, cex.axis = 0.8, xlim = c(1,10), ylim = c(1,100), xaxt = 'n', col = "green", cex.axis = 0.7, type = "o") + axis(side = 1, at=c(1:10), cex.axis = 0.7)


# Step 5: To combine First and Second plots together, use below steps.
	plot(First_match$Overs, First_match$India_score, xlab = "Overs", ylab = "Runs", main = "First 10 Over Match", pch = 20, cex.axis = 0.8, xlim = c(1,10), ylim = c(1,100), xaxt = 'n', col = "blue", cex.axis = 0.7, lty = 1, type = "o") + axis(side = 1, at=c(1:10), cex.axis = 0.7)  
  par(new=TRUE) 
  plot(First_match$Overs, First_match$Pakistan_Score, xlab = "Overs", ylab = "Runs", main = "First 10 Over Match", pch = 20, cex.axis = 0.8, xlim = c(1,10), ylim = c(1,100), xaxt = 'n', col = "green", cex.axis = 0.7, type = "o") + axis(side = 1, at=c(1:10), cex.axis = 0.7)

# Step 6: Display the Team Information and Match Result inside the graph:
legend (1, 100, c("India", "Pakistan", " ", paste("Result :", result_indvspak)),title="Team", col= c("blue", "green","white","black"), pch=c(20, 20,0,8), cex = 0.7)
