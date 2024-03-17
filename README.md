# swimming-pool
Tento skript ma pravidelne zbierať informacie zo stranky Petržalskej plavarne a zapisovať ich do csv suboru.


## Isntalacia WSL 

https://learn.microsoft.com/en-us/windows/wsl/install 

wsl --install 


## Shell script plavararen.sh
 
```shell
#echo "datum,utopenci," >> data.csv 

date -Is | tr -d '\n' >> data.csv # vypiše datum, odstrani enter, prida na koniec suboru 

echo "," | tr -d '\n' >> data.csv # vypiše čiarku, odstrani enter, prida na koniec suboru 

curl https://petrzalka.sk/plavaren/ | tr -d '\n' |cut -c 31660-31662 | tr -d '\n' >> data.csv # stiahne obsah stranky, odstrani entre, vypiše znaky od-do, odstrani entre, uloži do suboru 

echo "," >> data.csv # vypiše čiarku, prida na koniec suboru 
```

 ## ssh connect 

 ssh pato@mycofabrik.com 


 ## crontab

crontab –e     

https://crontab.guru/#*/10_*_*_*_* 

*/10 * * * * /cesta/k/tvojemu/skriptu_alebo_programu 

 

Zistenie adresaru prikaz pwd 

Editovanie suboru prikaz nano  


 ## Skopirovanie suboru na server 

 scp ./plavaren.sh pato@mycofabrik.com: 