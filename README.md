# BAFTA
BAFTA (British Academy of Film and Television Arts) Awards Data

## $\textcolor{#508AA1}{No\ Drama,\ No\ BAFTA\ 'Best\ Film'\ Award}$
It's known that drama and comedy were the earliest genres of cinema, and they're still the most popular genres today.

![BAFTA_loves_drama](https://github.com/user-attachments/assets/161faa43-f4de-467f-b63f-3ba7db323f09)

Did you know that of the 76 films that won the BAFTA best film award, 72 contained some level of drama. The films that are not in the drama genre are:
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
## $\textcolor{#508AA1}{The\ Longest\ and\ The\ Shortest}$

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
