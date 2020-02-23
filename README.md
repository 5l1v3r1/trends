# Trends

Trends shows trends of a country from [google daily
trends](https://trends.google.com/trends/?geo=GB) or sorted left "gundem" frame
from [eksisozluk](https://eksisozluk.com).

## Requirements

- [cURL](https://github.com/curl/curl) - A command line tool and library for transferring data with URL syntax.
- [pup](https://github.com/ericchiang/pup) - Parsing HTML at the command line.

## Installation

```sh
cd trends
mkdir -p /usr/local/bin
install ./trends /usr/local/bin
```

## Usage

```sh
trends [ -e ] [ -g ] [ -l limit ] [ -n countrycode ]
```

> Note `< required >` `[ optional ]`

### Options
- `-e`		**eksisozluk (is the default option if no args given).**
- `-r`		**disable eksisozluk rate.**
- `-g`		**show google daily trends for default nation (GB).**
- `-c`		**color the top 3 trends.**
- `-n CC`	**show google daily trends of specified nation.**
- `-l NR`	**limit (default: 10)**

## Examples
### Basic Usage

Show eksisozluk gundem.

```sh
$ trends
```
```txt
564 | cennetten indiği düşünülen melodi 
405 | atakan kayalar 
328 | wuhan virüsü 
309 | süleyman soylu'nun polis mesaisi açıklaması 
271 | türklerin hıristiyan olması halinde olabilecekler 
269 | elif can yetim 
222 | illerin en kötü ilçeleri 
209 | sevgili edinme konusunda hiçbir şey yapmayan insan 
197 | adil rami 
193 | setenay cankat'ın a spor'dan kovulması 
```
 
Show google trends for default nation (Great Britain).

```sh
$ trends -g
```
```txt
Sussex Royal
Bayern Munich
Virgin cruises
Tyson Fury fight
Quaden Bayles
Friends
EastEnders
Judy Finnigan
JLS tickets
June Brown
```

### Limiting

For eksisozluk
```sh
$ trends -el3
```
```txt
573 | van'da arama kurtarma ekibinin üzerine çığ düşmesi
524 | yalın'ın zalim parçasının yazarlardaki hatırası
362 | cnn türk'ün ismi cnn akp olarak değiştirilsin
```
 
For google
```sh
$ trends -nGB -l3
```
```txt
Sussex Royal
Bayern Munich
Virgin cruises
```

### Coloring (using tput)
```sh
$ trends -ec
```
![image](./img/colored_output.png "Colored Output")

### Disable Rates
```sh
$ trends -er
```
```txt
23 şubat 2020 fenerbahçe galatasaray maçı 
üniversitede sevgilisiyle kalan kızla evlenmek 
wuhan virüsü 
22 şubat 2020 van'da corona virüs şüphesi 
playstation 1'de oynanmış en güzel oyun 
ersun yanal 
seni de seni seveni de sevmiyoruz 
23 şubat 2020 kadıköy belediyesi paylaşımı 
ruh eşin nerede 
ali koç 
```

### Showing Both Platforms with the Limit 3 and Nation TR for Google
```sh
$ trends -egl3 -ntr
```
```txt
565 | cennetten indiği düşünülen melodi 
400 | atakan kayalar 
326 | wuhan virüsü 
Setenay Cankat
Hercai 33. bölüm
Muhterem Nur
```

> Note: No need to specify -g if the -n option used. Because nation option is
> only available for google trends, not others. So it is automatically triggers
> google option.
