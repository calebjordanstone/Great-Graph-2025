# load libraries
library(tidyverse)
library(data.table)
library(ggthemes)
library(ggExtra)

# load data
data <- fread(file='2025_GreatGraphData_v2.csv')

# create new variable
data[, OptimalChoice := case_when(OptimalTarget == selectedColour ~ 1, .default = 0)]

# create data for plotting
dt <- data[, .(Prop=mean(OptimalChoice)), by=.(subj_id, Strategy, LearningCondition)][order(Prop)]
dt$Participant <- seq(1, nrow(dt))

# create plot
p<- ggplot(data=dt) + 
  geom_point(aes(x=Participant, 
                 y=Prop, 
                 color=Strategy), 
             size=2) + 
  geom_segment(aes(x=Participant, 
                   xend=Participant, 
                   y=0, 
                   yend=Prop, 
                   color=Strategy,
                   linetype=LearningCondition), 
               linewidth=0.5) +
  # customise
  scale_y_continuous(name='Proportion of Optimal Choices',
                     breaks=c(0.0, 0.2, 0.4, 0.6, 0.8, 1.0),
                     labels=c('0.0', '0.2', '0.4', '0.6', '0.8', '1.0')) +
  scale_x_continuous(name='Participant', 
                     breaks=NULL, 
                     labels=NULL) +
  coord_flip() +
  geom_rangeframe(data=data.frame(x=c(0, 0), y=c(0, 1)),
                  aes(x, y), size=1, color='black') +
  theme_tufte() + 
  theme(text=element_text(family='sans',
                          face='plain',
                          color='black',
                          size=18), 
        axis.ticks=element_line(color='black'),
        axis.text=element_text(color='black'),
        legend.position='right',
        legend.title=element_blank(),
        legend.key=element_blank(),
        legend.background=element_blank(),
        legend.box.background=element_blank(),
        legend.text=element_text(size=16)) +
  scale_color_tableau()

p_m <- ggMarginal(p,
                  type = 'density', 
                  groupColour = T, 
                  groupFill = T,
                  margin='x')

# save figure
svg("great-graph_v2.svg",
    width=8, height=8)
plot(p_m)
dev.off()