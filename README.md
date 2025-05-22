# Great-Graph-2025
Great-Graph-2025

# Some information about the study
The study was designed to determine whether people adapt their attention to gradual changes in the task environment, and whether knowledge of the task structure (i.e., how the task environment changes across trials) influences attentional control in a dynamic environment.

In this Adaptive Choice Visual Search (ACVS) task, participants were presented with an array of 54 blue, orange and green squares. Each square contains a single digit between 2 and 9. Participants were told that their goal was to locate a TARGET square and report the number inside the target square. 

On every trial, there were two target squares: a BLUE square with a number between 2 and 5 (inclusive), and an ORANGE square with a number between 2 and 5. Participants were free to choose which of the two targets to search for in each display. All other blue and orange squares had numbers between 6 and 9. 

Participants were additionally told that the number of blue and orange squares would change trial-to-trial, and that it might be easier to search for the target with a smaller subset of items in the display. Green squares were never the target of search and participants were told to ignore them as attending to the green squares might slow them down.

The number of blue and orange squares changed from trial-to-trial according to a fixed sequence. <br/>
The table below shows an example sequence that begins with more blue squares and ends with more orange squares:<br/>

| Trial  |  1  |  2  |  3  |  4  |  5  |  6  |  7  |  8  |
| :------|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| Blue   | 27  |  25 |  23 |  21 |  19 |  17 |  15 |  13 |
| Orange | 13  |  15 |  17 |  19 |  21 |  23 |  25 |  27 |

In this example sequence, the "optimal" target (the target belonging to the smaller subset of items) is ORANGE in the first four trials, and BLUE in the second half of the sequence. Thus, the "optimal" strategy--searching within the smaller subset-- requires participants to switch their attention from the start-optimal target colour (Orange) to the end-optimal target colour (Blue) halfway through each sequence.

Note that if a sequence starts with more blue squares and ends with more orange squares, the subsequent sequence will start with more orange squares and end with more blue squares: Trial 8 in the preceding sequence and Trial 1 of the following sequence have identical trial statistics (13/27).

A novelty of this design is that the way in which trial statistics change is completely predictable. Participants can anticipate upcoming trial information if they have learned the sequence perfectly. In other words, if participants know that the sequence transitions from More-Blue to More-Orange, they should anticipate switching the target of their search. If they also know exactly _when_ that change occurs, they should be able to switch targets at Trial 5 of each sequence. More on the "when" in the next section.

Participants completed 30 sequences across 5 blocks (6 sequences per block) of the ACVS task. They were then presented with 2 forced-choice questions assessing what strategy they used to search for the target in the experiment, and what they noticed about how the number of items changed trial-to-trial.

# Between-Subject Manipulation
To determine whether certainty about _when_ to change targets is important for effective attentional control, we presented participants in the **Instructed** condition with information about the number of blue and orange squares at the start of every trial. Participants in the **Experience** group did not receive this pre-trial information. All other features of the task were identical for both Experience and Instructed participants.

# What is included in this repository
(1) One excel file ("2025_GreatGraphData_v2.xlsx") with participant data in long format.<br/>
Note that this is datafile has been _processed_ to exclude participants who failed a series of instruction checks, and also excluded trials where participants failed to make a response before the timeout period or if they responded with a number that did not belong to either target squares.
UPDATE 22/5/2025: Pivot table included in file with average proportion of blue targets selected across different trial types average over blocks (for each participant).

(2) One tif file illustrating a single trial in the experiment + pre-trial screen based on LearningCondition assignment.<br/>
![Trial Schematics](./Fig_Exp1.tif)

(3) Demo of the experiment. Go to the Program Demo folder and click on the index.html file - this will run the experiment in your browser. It is currently set to only run one block of the ACVS, followed by the two test (Strategy and Awareness) questions.


# Data key explaining all column names in the csv file

(1) subj_id = Subject id starting from 1000 generated in order of participation. Each participant has a unique subj_id.

(2) Learning Condition = Which between-subject condition participants are assigned to.<br/>
    Either **Experience** or **Instructed**<br/>
    Instructed participants are given information about the number of Blue and Orange items at the start of every trial<br/>
    Experience participants are not given any additional information

(3) block = Block Number (1-5)<br/>
(4) Num_Blue_Squares = Number of Blue squares on that trial<br/>
(5) Num_Orange_Squares = Number of Orange squares on that trial<br/>

(6) Sequence = Describes (1) the majority colour at the START of the sequence, e.g., BLUE and (2) the trial number in that sequence, e.g., 1<br/>
E.g., BLUE_1 is the first trial in a sequence starting with more blue items (27 blue/13 orange).

(7) OptimalTarget = Describes which target is "optimal" / belongs to the smaller subset. When there are more Blue items, Orange is the optimal target, and vice versa.

(8) selectedColour = Describes which target was selected by the participant. Based on the number reported, we can determine whether participants selected the blue or orange target on that trial.

UPDATE 22/5/2025: 
(9) colourBLUE = Recode column (8) into binary value: BLUE = 1, ORANGE = 0. This was added to allow proportions in pivot table.

(10) Strategy = Which search strategy participants reported using during the experiment (based on forced-choice selection).
    Either **Flexible**, **Persistent** or **Random**

What they selected:<br/>
    **Flexible**: "I searched for the target with the fewest number of same-colour (distractor) squares."<br/>
    **Persistent**: "I searched for a single colour for an extended period of time and avoided switching between colours."<br/>
    **Random**: "I had no particular strategy and decided on the fly which target to search for."

(11) SequenceAwareness = What participants reported (in a forced choice response) about how the number of blue and orange items changed during the experiment.
    Either **Sequential**, **Random** or **Unaware**<br/>

What they selected:<br/>
    **Sequential**: "Changes in the number of Blue and Orange squares happened SEQUENTIALLY; The number of majority-colour squares gradually decreased over a sequence and were replaced by squares in the other colour."<br/>
    **Random**: "Changes in the number of Blue and Orange squares happened RANDOMLY from trial to trial; There was no systematic pattern in how the number of different colour squares changed from trial to trial."<br/>
    **Unaware**: "I did not notice any change in the number of Blue and Orange squares across the experiment."
