# Great-Graph-2025
Great-Graph-2025

# What this experiment was about


# What is included
(1) One csv file ("2025_GreatGraphData.csv") with participant data in long format.<br/>
(2) One jpeg file illustrating a single trial in the experiment + pre-trial screen based on LearningCondition assignment.

# Data key explaining all column names in the relevant files

(1) subj_id = Subject id starting from 1000 generated in order of participation. Each participant has a unique subj_id.

(2) Learning Condition = Which between-subject condition participants are assigned to.<br/>
    Either **Experience** or **Instructed**<br/>
    Instructed participants are given information about the number of Blue and Orange items at the start of every trial<br/>
    Experience participants are not given any additional information

(3) block = Block Number (1-5)<br/>
(4) Num_Blue_Squares = Number of Blue squares on that trial<br/>
(5) Num_Orange_Squares = Number of Orange squares on that trial<br/>

Number of blue and orange squares always appear in pairs and change sequentially (Either Blue or Orange is the majority colour first - sequences alternate so if this sequence starts with more blue and ends with more orange, the next sequence will start with more orange and end with more blue). <br/>

Example below is a trial where the sequence starts with more Blue items:<br/>

| Trial  |  1  |  2  |  3  |  4  |  5  |  6  |  7  |  8  |
| :------|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| Blue   | 27  |  25 |  23 |  21 |  19 |  17 |  15 |  13 |
| Orange | 13  |  15 |  17 |  19 |  21 |  23 |  25 |  27 |

(5) Sequence = Describes (1) the majority colour at the START of the sequence, e.g., BLUE and (2) the trial number in that sequence, e.g., 1<br/>
E.g., BLUE_1 is the first trial in a sequence starting with more blue items (27 blue/13 orange).

(6) OptimalTarget = Describes which target is "optimal" / belongs to the smaller subset. When there are more Blue items, Orange is the optimal target, and vice versa.

(7) selectedColour = Describes which target was selected by the participant. Based on the number reported, we can determine whether participants selected the blue or orange target on that trial.

(8) Strategy = Which search strategy participants reported using during the experiment (based on forced-choice selection).
    Either **Flexible**, **Persistent** or **Random**

What they selected:<br/>
    **Flexible**: "I searched for the target with the fewest number of same-colour (distractor) squares."<br/>
    **Persistent**: "I searched for a single colour for an extended period of time and avoided switching between colours."<br/>
    **Random**: "I had no particular strategy and decided on the fly which target to search for."

(9) SequenceAwareness = What participants reported (in a forced choice response) about how the number of blue and orange items changed during the experiment.
    Either **Sequential**, **Random** or **Unaware**<br/>

What they selected:<br/>
    **Sequential**: "Changes in the number of Blue and Orange squares happened SEQUENTIALLY; The number of majority-colour squares gradually decreased over a sequence and were replaced by squares in the other colour."<br/>
    **Random**: "Changes in the number of Blue and Orange squares happened RANDOMLY from trial to trial; There was no systematic pattern in how the number of different colour squares changed from trial to trial."<br/>
    **Unaware**: "I did not notice any change in the number of Blue and Orange squares across the experiment."
