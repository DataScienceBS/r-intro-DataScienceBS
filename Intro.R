
iris_data <- iris
str(iris_data)

########################
# a. What is the datatype of iris_data?<br>
###    iris_data is a dataframe with 150 observations of 5 variables
# b. How many columns does it have? how many rows?
###    iris_data contains 150 rows and 5 columns
########################

#define sepal area calculation and find average for all
sepal_area <- iris_data$Sepal.Width * iris_data$Sepal.Length
avg_sepal_area <- mean(sepal_area)
# The average sepal area is 17.8229

#loop to print area for each record
for (a in sepal_area) {
  print(paste("Sepal area is ", sepal_area))
  break
}

#create a new column
iris_data$Sepal.Area <- NA

#barplot for count of species
species_counts <- table(iris_data$Species)
barplot(species_counts)
#all species have 50 counts

par(mfrow = c(1, 2))
# a plot showing how petal width (y) varies with petal length (x).
par(plot(iris_data$Petal.Length, iris_data$Petal.Width))
# a plot showing how sepal length (y) varies with petal length (y). (assuming petal length should be x)
par(plot(iris_data$Petal.Length, iris_data$Sepal.Length))

############
View(mtcars)
# a. drat is the Rear axle ratio
fast <- min(mtcars$qsec)
slow <- max(mtcars$qsec)
# b. the min and max 1/4 mile tmies are 14.5 and 22.9
min_max <- function(min,max)
# c. the min car is Ford Pantera and the max car is Merc 230
############

#bar plot for number of cars by cylinders
cyl_cnt <- table(mtcars$cyl)
barplot(cyl_cnt)
#There are more V8 motors (14) than v6 (7) or i4 (11)

#12. Write a for-loop that iterates through the mtcars dataframe. 
#If the car is has 8 cylinders, print "<carname> is a gas guzzler."
#### loop working, can't grab car name ####
for (row in 1:nrow(mtcars)){
  cyl_num <- mtcars[row, "cyl"]
  car <- rownames(mtcars)
      if(cyl_num==8){
      print(cyl_num,car)
  }
}
  
  
#13. Work through the code examples in the slides that use the starwars data. Use pipes to create a new view of the data.
#14. Install and load the swirl package. Work through the 'Introduction to Statistical Inference' course. Typing info at a prompt will show you options for exiting swirl.
