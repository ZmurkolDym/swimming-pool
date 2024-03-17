#echo "datum,utopenci," >> data.csv
date -Is | tr -d '\n' >> data.csv # vypiše datum, odstrani enter, prida na koniec suboru
echo "," | tr -d '\n' >> data.csv # vypiše čiarku, odstrani enter, prida na koniec suboru
curl https://petrzalka.sk/plavaren/ | tr -d '\n' |cut -c 31660-31662 | tr -d '\n' >> data.csv # stiahne obsah stranky, odstrani entre, vypiše znaky od-do, odstrani entre, uloži do suboru
echo "," >> data.csv # vypiše čiarku, prida na koniec suboru