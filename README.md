[OC] Most Votes for U.S. Presidential Candidates, 1920-2024, Adjusted to 2024 Population

If historical elections occurred with a 2024 voting population, these could have been the results. This chart plots the votes cast for U.S. presidential candidates as a share of the voting-eligible population during that election year, and then adjusted to a commensurate share of the voting-eligible population of 2024. 

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

R code:

[https://github.com/ptrdo/mostest](https://github.com/ptrdo/mostest)

Final data:

2024 Results per Cook Political Report (Thu, 05 Dec 2024 13:31:00 GMT)
-  77,287,591 Donald Trump
-  75,002,294 Kamala Harris
-   2,946,201 Other
- 155,236,086 Total

Adjustment to 2024 population is a product of VEP_SHARE and 244,666,890 (2024 Voting-Eligible Population as estimated by University of Florida Election Lab). VEP_SHARE of 2024 candidates result from current vote counts as a proportion of VEP. 

|YEAR|VEP_SHARE|WON|PARTY|CANDIDATE         |
|----|---------|---|-----|------------------|
|1964|0.3834152|1  |D    |Lyndon Johnson    |
|1936|0.3707035|1  |D    |Franklin Roosevelt|
|1956|0.3455790|1  |R    |Dwight Eisenhower |
|1952|0.3437379|1  |R    |Dwight Eisenhower |
|1940|0.3414842|1  |D    |Franklin Roosevelt|
|1972|0.3409756|1  |R    |Richard Nixon     |
|2020|0.3385666|1  |D    |Joe Biden         |
|1928|0.3312090|1  |R    |Herbert Hoover    |
|2008|0.3290379|1  |D    |Barack Obama      |
|1932|0.3267990|1  |D    |Franklin Roosevelt|
|1984|0.3233812|1  |R    |Ronald Reagan     |
|1960|0.3171902|1  |D    |John Kennedy      |
|1960|0.3161444|0  |R    |Richard Nixon     |
|2024|0.3158890|1  |R    |Donald Trump      |
|2020|0.3091619|0  |R    |Donald Trump      |
|2004|0.3087437|1  |R    |George W. Bush    |
|2024|0.3065486|0  |D    |Kamala Harris     |
|2012|0.2990801|1  |D    |Barack Obama      |
|1944|0.2984914|1  |D    |Franklin Roosevelt|
|1920|0.2968718|1  |R    |Warren Harding    |
|2004|0.2937537|0  |D    |John Kerry        |
|2016|0.2896857|0  |D    |Hillary Clinton   |
|2008|0.2838229|0  |R    |John McCain       |
|1988|0.2818048|1  |R    |George Bush       |
|1940|0.2793958|0  |R    |Wendell Willkie   |
