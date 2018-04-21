# Find out, which __year__ was the __most terrific__ for portfolio you have identified as __most profitable__ during the lesson and 
# show it on the chart using `ggplot2` package. Write an explanation about your findings into the code as comment.
# __Commit__ it to your repository into `Lessons/Lesson2/Homework`.

# Code
dt_KPI_raw %>% 
  filter(Unit == 'Unit7') %>%
  group_by(Year) %>% 
  summarize(AbsolutePerformance = sum(Premium * (1 - (Losses + Expenses) / Premium), na.rm = TRUE)) %>% 
  arrange(AbsolutePerformance) %>% 
  ggplot(aes(x = Year, y = AbsolutePerformance)) + 
  geom_col()


# Your Explanation about analysis:
# filter pre Unit 7 som pouzila, pretoze na cviceniach sme si ho vyhodnotili ako unit s najvyssim poistnym,
# poistenia som zoskupila podla roku a pre kazdy rok vypocitala "absolute performance". 
# Ako vidiet na grafe, najhorsi rok je 2014.
# 
