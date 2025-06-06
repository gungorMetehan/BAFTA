# BAFTA
BAFTA (British Academy of Film and Television Arts) Awards Data

## No Drama, No BAFTA 'Best Film' Award
It's known that drama and comedy were the earliest genres of cinema, and they're still the most popular genres today.

![BAFTA](https://github.com/user-attachments/assets/5aac64f8-5156-4b72-81ba-77c6e4d59116)

Did you know that of the 77 films that won the BAFTA best film award, 73 contained some level of drama. The films that are not in the drama genre are:

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
## The Longest and The Shortest

| Year |           Film           |                Genres               | Duration |
|:----:|:------------------------:|:-----------------------------------:|:--------:|
| 1963 |    Lawrence of Arabia    | Adventure - Biography - Drama - War |    218   |
| 1986 | The Purple Rose of Cairo |      Comedy - Fantasy - Romance     |    82    |

### R Codes
```
BAFTA_film <- read.csv("https://raw.githubusercontent.com/gungorMetehan/BAFTA/main/BAFTA_film.csv")
BAFTA_film[which(BAFTA_film$duration == max(BAFTA_film$duration)), ]
BAFTA_film[which(BAFTA_film$duration == min(BAFTA_film$duration)), ]
```
