# Trends

Trends shows trends of a country from [google daily
trends](https://trends.google.com/trends/?geo=GB) or sorted left "gundem" frame
from [eksisozluk](https://eksisozluk.com).

## Installation

```sh
cd trends
mkdir -p ~/.local/bin
install ./trends ~/.local/bin/
```

## Usage

```sh
trends < -g|--google <CC> [limit] | -e|--eksi [limit] >
```

> Note `< required >` `[ optional ]`

## Examples
### Basic Usage

Show eksisozluk gundem.

```sh
$ trends --eksi
 • 573 | van'da arama kurtarma ekibinin üzerine çığ düşmesi
 • 524 | yalın'ın zalim parçasının yazarlardaki hatırası
 • 362 | cnn türk'ün ismi cnn akp olarak değiştirilsin
 • 349 | ak parti'den önceki türkiye
 • 275 | izlenmiş en iyi konser
 • 270 | bir çocuğa zarar gelecekse 1000 köpek öldürülsün
 • 259 | makasla üzerine yürüyen kadını öldüren polis
 • 251 | mustafa kemal'in batılı olalım takıntısı
 • 237 | türk okullarında zorbalık olmaması
 • 225 | geceye bir obez atasözü bırak
```
 
Show google trends for Great Britain.

```sh
$ trends --google GB
 • Kirk Douglas
 • Odion Ighalo
 • Tottenham vs Southampton
 • Nancy Pelosi
 • John Caudwell
 • Rangers vs Hibernian
 • Eminem
 • Kevin Kilbane
 • Ralf Little
 • Storm Ciara
```

### Limiting the Result


```sh
$ trends -e 3
 • 573 | van'da arama kurtarma ekibinin üzerine çığ düşmesi
 • 524 | yalın'ın zalim parçasının yazarlardaki hatırası
 • 362 | cnn türk'ün ismi cnn akp olarak değiştirilsin
```
 
```sh
$ trends -g GB 3
 • Kirk Douglas
 • Odion Ighalo
 • Tottenham vs Southampton
```
