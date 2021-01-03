echo  "KLCOL CON TUS RESPUESTAS" KLEARK
declare -a resps=();
declare -a nums=({1..30});
read -a resps  
echo -n "cual sera el nombre del archivo?" -n ""

read nombre
echo "en la carpeta de la escuela. 1 es si y 0 es no"
read VAR

if [[ $VAR = 1 ]] 
then

echo "en cual carpeta de la escuela. 
1) Biologia
2) Dibujo
3) Etica
4) Mecanismos
5) Ingles
6) Maths
7) Neumaticos
8) Orientacion"
read esc

case $esc in
 1)
 	lugar=Biologia
 	 ;;
 2) 
 	lugar=Dibujo
 	 ;;
 3) 
 	lugar=Etica
 	 ;;
 4) 
 	lugar=Mecanismos
 	 ;;
 5) 
 	lugar=ingl
 	 ;;
 6)
 	lugar=math
 	 ;;
 7) 
 	lugar=neumaticos
 	 ;;
 8) 
	lugar=orientacion
	 ;;
 *)
 	 ;;
esac

index=${resps[@]}
echo $index

u=0
q=1
for i in $index; do

$u= $(expr $u + 1) 

echo -n  "haora estan en $lugar/$nombre"
echo "${nums[$u]}. ${resps[$u]}" >> ~/Educacion/Escuela/$lugar/$nombre.txt
done

else


echo "en cual carpeta? (sin incluir ~/)"
read respuesta

for i in {0..${resps[@]}}; do
echo "${nums[$u]}. ${resps[$u]}" -n "haora estan en ~/$lugar/$nombre"
echo "${nums[$u]}. ${resps[$u]}" >> ~/$lugar/$nombre.txt
done

fi
