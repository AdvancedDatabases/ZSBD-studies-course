# Testy wydajnościowe
Katalog zawiera zestawy próbek obciążenia (skrypty SQL) na potrzeby przeprowadzenia
testów wydajnościowych systemu zarządzania bazą danych Oracle 12c oraz skrypty
uruchamiające te testy i mierzące czasy wykonania.

# Lokalizacja próbek obciążenia
Próbki obciążenia w postaci skryptów SQL znajdują się w katalogu **test-sets/NAME**,
gdzie *NAME* to nazwa zbioru próbek obciążenia.

# Architektura środowiska testowego
Środowisko testowe składa się z:
1. kontenera SZBD Oracle
1. skryptów uruchamianych w kontenerze
    - skrypt ```worker.sh``` jest odpowiedzialny za uruchomienie (n razy) pojedynczego
    testu (skrpytu SQL) i zapisanie czasów wykonania
    - skrypty pomocnicze
1. skryptów uruchamianych na hoście
    - skrypt ```run.sh``` uruchamia testy z zadanego zbioru testowego w kontenerze,
    zarządza kontenerem (w szczególności przywraca do stanu pierwotnego w razie
    potrzeby)
    - skrypty pomocnicze
1. zbiorów próbek testowych
    - są montowane w kontenerze (```/home/oracle/benchmark/test-sets```)

# Uruchomienie testów wydajnościowych
Dla każdego z zestawów można uruchomić testy podając nazwę zbioru testowego
(nazwę katalogu z testami w głównym katalogu testów,  ```/home/oracle/benchmark/test-sets```)
dla parametru *-i*, np:
```
./run.sh -i=set3
```

## Odtwarzanie środowiska
Jeżeli w zbiorze testowym występują skrpyty, które zmieniają stan bazy danych
i wymagają przywrócenia bazy danych do stanu pierwotnego, to przed uruchomieniem
skryptu *run.sh* należy w katalogu z testami utworzyć plik o nazwie *require_restart*
i w tym pliku, w osobnych liniach wypisać nazwy (tzn. NAME.EXT bez ścieżek)
plików testów, które wymagają odtwarzania środowiska.

# Wyniki
Wyniki testów wydajnościowych będą zapisane w pliku *benchmark_summary-SET_NAME.tsv*,
gdzie *SET_NAME* to nazwa zbioru testowego. Plik zawiera podsumowanie czasów dla
*każdego z testów*. W pliku zapisane są czasy: minimalny, średni, maksymalny oraz
liczba uruchomień dla danego testu. Przykładowa zawartość pliku dla zbioru *dummy*:
```
test_name	n	min_time	avg_time	max_time
test1.sql	3	0.047	0.062	0.089
test2.sql	3	0.044	0.050	0.062
test3.sql	3	0.042	0.052	0.065
```

# Logi
W czasie testów zapisywane są logi z wykonania skrpytu run.sh (run.log) oraz
worker.sh (worker.log). Ponadto, po uruchomieniu danego zbioru testowego w
katalogu zbioru testowego zapisane są logi z czasami wykonania. Wszystkie logi
są usuwane przed każdym kolejnym uruchomieniem skryptu run.sh.

Wykorzystano modyfikację skryptu do logowania z następującego źródła:
https://github.com/adoyle-h/bash-logger
