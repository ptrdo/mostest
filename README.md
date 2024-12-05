# mostest
Most Votes for U.S. Presidential Candidates, 1920-2024, Adjusted to 2024 Population

This charts the votes cast for U.S. presidential candidates as a share of the voting-eligible population during that election year, and then adjusted to a commensurate share of the voting-eligible population in 2024. 

Election data was aggregated from The Federal Election Commission archives, with corroboration and missing data derived from the American Presidency Project and Wikipedia. A working spreadsheet of the aggregation can be found in the links below. 

Data was assembled in MacOS Numbers, charted and output to SVG from R ggplot, and then refined in Adobe Illustrator. 

University of Florida Election Lab, National VEP Turnout Rated, data archive:

[https://election.lab.ufl.edu/dataset/national-vep-turnout-rates-1789-present/](https://election.lab.ufl.edu/dataset/national-vep-turnout-rates-1789-present/)

Cook Political, 2024 National Popular Vote Tracker (paywall):

[https://www.cookpolitical.com/vote-tracker/2024/electoral-college/subscriber](https://www.cookpolitical.com/vote-tracker/2024/electoral-college/subscriber)

Federal Election Commission, results and voting information:

[https://www.fec.gov/introduction-campaign-finance/election-results-and-voting-information/](https://www.fec.gov/introduction-campaign-finance/election-results-and-voting-information/)

Worksheet of aggregated data:

[https://docs.google.com/spreadsheets](https://docs.google.com/spreadsheets/d/1DSylwUb68x23Bn4Rl2iEis8sU_X9bRuSPe_Ta1-gNMQ/edit?usp=sharing)

Final data:

Adjustment to 2024 population is a product of VEP_SHARE and 244,666,890 (2024 Voting-Eligible Population as estimated by University of Florida Election Lab). VEP_SHARE of 2024 candidates result from current vote counts as a proportion of VEP. 

|YEAR|VEP_SHARE|WON|PARTY|CANDIDATE         |
|----|---------|---|-----|------------------|
|1972|0.3737383|1  |R    |Richard Nixon     |
|1936|0.3707035|1  |D    |Franklin Roosevelt|
|1964|0.3669308|1  |D    |Lyndon Johnson    |
|1956|0.3455790|1  |R    |Dwight Eisenhower |
|1952|0.3437379|1  |R    |Dwight Eisenhower |
|1940|0.3414842|1  |D    |Franklin Roosevelt|
|2020|0.3405675|1  |D    |Joe Biden         |
|1928|0.3312090|1  |R    |Herbert Hoover    |
|1960|0.3281278|1  |D    |John Kennedy      |
|1960|0.3270459|0  |R    |Richard Nixon     |
|1932|0.3267990|1  |D    |Franklin Roosevelt|
|2012|0.3191482|1  |D    |Barack Obama      |
|2024|0.3159000|1  |R    |Donald Trump      |
|2020|0.3109890|0  |R    |Donald Trump      |
|1988|0.3100921|1  |R    |George H.W. Bush  |
|2024|0.3065500|0  |D    |Kamala Harris     |
|1984|0.3028770|1  |R    |Ronald Reagan     |
|2016|0.3025992|0  |D    |Hillary Clinton   |
|1976|0.3009532|1  |D    |Jimmy Carter      |
|1944|0.2984914|1  |D    |Franklin Roosevelt|
|2008|0.2974414|1  |D    |Barack Obama      |
|1920|0.2968718|1  |R    |Warren Harding    |
|2012|0.2950251|0  |R    |Mitt Romney       |
|2016|0.2894174|1  |R    |Donald Trump      |
|1976|0.2885468|0  |R    |Gerald Ford       |
