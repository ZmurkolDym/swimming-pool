#echo "datum,utopenci," >> data.csv
date -Is | tr -d '\n' >> data.csv; # vypiše datum, odstrani enter, prida na koniec suboru
echo "," | tr -d '\n' >> data.csv; # vypiše čiarku, odstrani enter, prida na koniec suboru

html=$(curl -sL "https://petrzalka.sk/plavaren");
line=$(echo "$html" | grep -oP '(?<=<div class="szp-occupancy">).*?(?=</div>)')
text=$(echo "$line" | sed 's/&nbsp;/ /g')
cislo=$(echo $text | awk '{print $4}');
echo "$cislo," >> data.csv