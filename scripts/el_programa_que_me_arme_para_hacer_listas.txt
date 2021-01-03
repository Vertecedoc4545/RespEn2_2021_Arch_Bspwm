echo  "KLCOL CON TUS RESPUESTAS" KLEARK
declare -a resps=();
declare -a nums=({1..30});
read -a resps  
echo -n "cual sera el nombre del archivo?" -n ""
read nombre

for i in {0..30}; do
echo "${nums[$i]}. ${resps[$i]}"
echo -n  "haora estan en ~/Educacion/Escuela/orientacon/$nombre"
echo "${nums[$i]}. ${resps[$i]}" >> ~/Educacion/Escuela/orientacion/$nombre.txt
done
