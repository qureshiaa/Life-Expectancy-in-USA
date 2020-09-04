library(tidyverse)

getwd()

life_exp = read.csv(file = 'life_expec.csv')

colnames(life_exp)

life_exp %>% filter(Year == 2000)

life_exp2 = life_exp %>% filter(Race == 'All Races', Sex == 'Both Sexes')

life_exp2

life_exp2 %>% ggplot()

life_exp2 %>% ggplot(aes(x = Year, y = Avg_Life_Expec)) + geom_line() + labs(
  title = 'United States Life Expectancy: 100 Years of Change', y = 'Average Life Expectancy (Years)' 
)
