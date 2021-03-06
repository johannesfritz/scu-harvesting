# please install stringr
# install.packages("stringr")

library(stringr)

# an article about basketball salaries:
# https://thesportjournal.org/article/determinants-of-nba-player-salaries/
practice.text="In the 2013-2014 National Basketball Association (NBA) season, the Los Angeles Laker’s Kobe Bryant earned $30.4 million. That same year Dirk Nowitzki, Amar’e Stoudemire, Joe Johnson, Carmello Anthony, and Dwight Howard earned $22.2, $21.7, $21.4, $21.3, and $20.5 million respectively (8). The average salary of an NBA player for the 2013-2014 season was $5.1 million which was higher than the average salary for a National Football League, National Hockey League, or Major League Baseball player (3). What’s more, 52 (9.1%) of NBA players earned between $10 million and $19 million during the 2013-2014 season (8). The NBA players’ salary cap was instituted in the 1984-1985 season. That year the salary cap was $3.6 million and the average player salary was $300,000 (5). In 1984-1985 eleven NBA players made $1 million or more with the Lakers’ Earvin “Magic” Johnson topping the list with $2.5 million (1). In 2013, 377 (66.2%) of NBA players earned $1 million or more. For the 2012-2013 season, the NBA salary cap was $58 million and the average NBA player salary was $5.1 million. Again, in the 1984-1985 season, Magic Johnson’s $2.5 million was the highest salary in the NBA. However, in the 2013-2014 the highest salary was Los Angeles Lakers’ Kobe Bryant who made $30.4 million.

The escalation of NBA player salaries has not only been explosive, but it has also created a large earnings gap between players. Kobe Bryant’s 2013-2014 $30.4 million salary considerably dwarfed his Lakers teammate Ryan Kelly’s $490,000. There has been considerable attention paid to the escalation of NBA player salaries (24).  Sprow (25) seemed to think that there is a salary bubble in the NBA and that salaries will decrease or come “tumbling down” very soon. There may be evidence for this. From the 1984-1985 to 2006-2007, the average NBA player salary continued to increase. However, from 2007-2008 until 2012-2013, NBA salaries leveled off (3, 13).

What’s more intriguing is the fact that some question whether NBA players are overpaid. Nathan (22) indicated that overpayment in the NBA is problematic. Statistically some players are overpaid based on poor or sub-par performance. These players are highly sought after because they are proficient in one aspect of their game such as three point shooting or they may be a defensive force. However, these same specialized players may be a major liability in other areas i.e., the three point shooter may be a poor defender and the defensive force may be a poor free throw shooter. Whatever the issue, overpayment in the NBA is a concern. The reason for payment is to fairly compensate a player for his play. However, in the NBA it seems as if compensation is a reward for past performance and anticipated or expected future performance. However, past performance and expected performance may not be good indicators of fair compensation. NBA owners and general managers often over spend for a player that they feel will meet and immediate need. This is very myopic."


## Example questions:
## Are you able to get all USD figures out of this text?
## How mentions of the LA Lakers can you find?

str_extract_all(practice.text, "YOUR PATTERN HERE")
