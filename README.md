# BAFTA
BAFTA (British Academy of Film and Television Arts) Awards Data

## No Drama, No BAFTA 'Best Film' Award
It's known that drama and comedy were the earliest genres of cinema, and they're still the most popular genres today. But, did you know that of the 76 films that won the BAFTA best film award, 72 contained some level of drama. The films that are not in the drama genre are:
| Year |           Film           |                 Genres                 |
|:----:|:------------------------:|:--------------------------------------:|
| 1986 | The Purple Rose of Cairo |       Comedy - Fantasy - Romance       |
| 1978 |        Annie Hall        |            Comedy - Romance            |
| 1965 |      Dr. Strangelove     |              Comedy - War              |
| 1964 |         Tom Jones        | Adventure - Comedy - History - Romance |

### R Codes
```
BAFTA_film <- read.csv("https://raw.githubusercontent.com/gungorMetehan/BAFTA/main/BAFTA_film.csv")
BAFTA_film[grepl("Drama", BAFTA_film$genres) == FALSE, ]
```
