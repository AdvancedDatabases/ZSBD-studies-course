# testy wydajnościowe
Katalog zawiera zestawy próbek obciążenia (skrypty SQL) na potrzeby przeprowadzenia
testów wydajnościowych systemu zarządzania bazą danych Oracle 12c oraz skrypty
uruchamiające te testy i mierzące czasy wykonania.

## Lokalizacja próbek obciążenia
Próbki obciążenia w postaci skryptów SQL znajdują się w katalogu **test-sets/NAME**,
gdzie *NAME* to nazwa zbioru próbek obciążenia.

## Architektura środowiska testowego
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
```
./run.sh -i=set3
```
Parametr *-i* przyjmuje nazwę zbioru testowego (nazwę katalogu z testami w głównym
katalogu testów, ```/home/oracle/benchmark/test-sets```)
