gapminder <-read.table("gapminder.txt",header = TRUE)

fahrenheit_to_celsius <- function(temp){
celsius <- (temp-32)*5/9  
return(celsius)
}
celsius_to_kelvin <- function(temp_c){
kelvin <- temp_c+273.15
return(kelvin)
}
fahrenheit_to_kelvin <- function(temp_f){
  celsius <- fahrenheit_to_celsius(temp_f)
  kelvin <- celsius_to_kelvin(celsius)
  return(kelvin)
}
MeanlifeExp <- function(Continent){
subset_continent_gapminder <- gapminder[gapminder$continent == Continent, "lifeExp"]
mean_life_exp <- mean(subset_continent_gapminder)
return(mean_life_exp)
}
MeanlifeExp("Europe")

#################
#if (conditions is true) {
#  perform some action
#}
#else {#the condition is false
#  perform some other as.function
#}  
  
##############Multiple conditions

#if(condition is ture){
#  do this
#} else if (second condition is ture){
 # do this
#} else {
 # do this
#}

Asia_life_exp <- MeanlifeExp("Asia")

if (Asia_life_exp>=50){
  print("Life Expectancy of Asia is greater than or equal to 50")
}else {
  print("Life Expectancy of Asia is lower than 50")
}

##############
 #for (interator in a set of values){
  # do an action
# }

for (i in 1:10){
  print(i)
}

menuItems <- c("chicken","soup","salad","tea")
menuType <- factor(c("solid", "liquid","solid","liquid"))
menuCost <- c(4.99, 2.99, 3.29,1.89)
myorder_df <- data.frame(menuItems,menuType,menuCost)

for (items in myorder_df$menuItems){
  print(items)
}

for (items in myorder_df$menuItems) {
  myorder_df_subset <- myorder_df[myorder_df$menuItems == items, ]
  print(items)
  print(myorder_df_subset$menuCost)
}

#challenge 3
#############
#gapminder <- read.table("gapminder.txt", header=TRUE)

#threshold_value <- 50

continent_list <- unique(gapminder$continent)

for (Continent in continent_list){
  continent_subset <- gapminder[gapminder$continent == Continent, "lifeExp"]
  continent_mean <- mean(continent_subset)
  if (continent_mean>=50){
    print(Continent)
    print("Life exp is greater than 50")
  }else{
    print(Continent)
    print("Life exp is lower than 50")
  }
}
     
     
     
     gapminder$continent) {
if (mean_life_exp>=50)  {
  print("Mean life expectancy of this country is larger than 50")
} else ()
}