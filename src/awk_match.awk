awk 'BEGIN {FS=OFS=","};NR==FNR {a[$4]=$3; next}($3 in a){print $0, "true"}' ../csv/t0.csv ../csv/t1.csv

awk 'BEGIN {FS=OFS=","};NR==FNR {a[$4]=$2; next}($2 in a){print $1,$2,"true"}' clientes.csv ips_rc.csv
awk 'BEGIN {FS=OFS=","};NR==FNR {a[$4]~ /substr($2, 0, 4)/; next}($2 in a){print $1,$2,$15="true"} 1' clientes.csv ips_rc.csv 
awk 'BEGIN {FS=OFS=","} $2 ~ /ARTMEDICA S.A.S/ {print $2}' ips_rs.csv
awk 'BEGIN {FS=","}; $4 ~ /COMPENSA/ {print $0}' clientes.csv
awk 'BEGIN {FS=OFS=","}; FNR==NR{arr[$4] ~ /$2/; next}{print $0,(/$2/ in arr? "true":"false")}' clientes.csv ips_rs.csv

awk 'BEGIN {FS=OFS=","}; FNR==NR{index(arr[$4], $2); next}{print $0,($2 in arr? "true":"false")}' clientes.csv ips_rs.csv



//awk replace
awk -i inplace 'BEGIN {FS=OFS=","} $2 = ($2 ~ /AUNA COLOMBIA/ ? "AUNA COLOMBIA S.A.S" : $2) {print $0}' ips_rs_2.csv

awk -i inplace 'BEGIN {FS=OFS=","} $2 = ($2 ~ /AUNA COLOMBIA/ ? "AUNA COLOMBIA S.A.S" : $2) {print $0}' clientes.csv


