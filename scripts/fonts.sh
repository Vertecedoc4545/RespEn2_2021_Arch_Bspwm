echo 'cual es el nombre del archivo sin extencion (nombre en lugar de nombre.rar)'
read nombre
echo 'ruta de la carpeta de la fuente'
read direccion


tipo=$(ls $direccion/$nombre.*)

case tipo in
 tipo=='$direccion/$nombre.tar')
#si es tar
cd $direccion
mkdir $nombre
#creamos el la carpeta para descomprimir el .tar
mv $direccion/$nombre.tar $direccion/$nombre
cd $nombre
#descomprimimos el .tar con la fuente
tar -xf $nombre.tar

elif ['ls $direccion/$nombre.tar.gz | grep .tar.gz' == $direccion/$nombre.tar.gz]
then
#si es tar.gz
cd $direccion
mkdir $nombre
#creamos el la carpeta para descomprimir el tar.gz
mv $direccion/$nombre.tar.gz $direccion/$nombre
cd $nombre
#descomprimimos el .tar.gz con la fuente
tar -xzf $nombre.tar.gz
elif ['ls $direccion/$nombre.gz | grep .gz' == $direccion/$nombre.gz]
then
#si es gz
cd $direccion
mkdir $nombre
#creamos el la carpeta para descomprimir el .gz
mv $direccion/$nombre.gz $direccion/$nombre
cd $nombre
#descomprimimos el .gz con la fuente
gzip - d $nombre.tar.gz
elif ['ls $direccion/$nombre.zip | grep .zip' == $direccion/$nombre.zip]
then
#si es zip
cd $direccion
mkdir $nombre
#creamos el la carpeta para descomprimir el .zip
mv $direccion/$nombre.zip $direccion/$nombre
cd $nombre
#descomprimimos el .zipz con la fuente
unzip $nombre.zip
elif ['ls $direccion/$nombre.rar | grep .rar' == $direccion/$nombre.rar]
then
#si es zip
cd $direccion
mkdir $nombre
#creamos el la carpeta para descomprimir el .zip
mv $direccion/$nombre.rar $direccion/$nombre
cd $nombre
#descomprimimos el .zipz con la fuente
unrar x $nombre.rar

fi


#=================================================================================================
#=================================================================================================
#=================================# ya descomprimimos #===========================================
echo "archivo descomprimido"

#creamos la carpeta de la fuente en /usr/share/fonts
mkdir /usr/share/fonts/$nombre
#si es un ttf, solo para que estemos en lo correcto y no salgan errores es este if y los demas


if ['ls $direccion/$nombre/$nombre.ttf | grep .tt' == $direccion/$nombre/$nombre.ttf]
then
chmod +w $nombre.ttf
mv $nombre.ttf /usr/share/fonts/$nombre
#ya esta instalada la fuente ttf
cd ..
#removemos la carpeta que creamos y los archivos del proceso
rm -rf $direccion/$nombre
#en caso de no ser ttf
#vamos con los otf
elif ['ls $direccion/$nombre/$nombre.otf | grep .otf' == $direccion/$nombre/$nombre.otf]
then
chmod +w $nombre.otf
mv $nombre.otf/usr/share/fonts/$nombre
#ya esta instalada la fuente otf
cd ..
#removemos la carpeta que creamos y los archivos del proceso
rm -rf $direccion/$nombre
echo "archivo instalado"
#si no es ni ttf, ni otf entonces es ttc
elif ['ls $direccion/$nombre/$nombre.ttc | grep .ttc' == $direccion/$nombre/$nombre.ttc]
then
chmod +w $nombre.ttc
mv $nombre.ttc/usr/share/fonts/$nombre
#ya esta instalada la fuente ttc
#removemos la carpeta que creamos y los archivos del proceso
rm -rf $direccion/$nombre
cd ..
echo "archivo instalado"
fi
echo "el esta en una carpeta, instalando desde la carpeta de la fuente"

cd $direccion/$nombre/$nombre
if ['ls $direccion/$nombre/$nombre.ttf | grep .ttf' == $direccion/$nombre/$nombre.ttf]
then
chmod +w $nombre.ttf
mv $nombre.ttf /usr/share/fonts/$nombre
#ya esta instalada la fuente ttf
cd ..
#removemos la carpeta que creamos y los archivos del proceso
rm -rf $direccion/$nombre
#en caso de no ser ttf
#vamos con los otf
elif ['ls $direccion/$nombre/$nombre.otf | grep .otf' == $direccion/$nombre/$nombre.otf]
then
chmod +w $nombre.otf
mv $nombre.otf/usr/share/fonts/$nombre
#ya esta instalada la fuente otf
cd ..
#removemos la carpeta que creamos y los archivos del proceso
rm -rf $direccion/$nombre
echo "archivo instalado"
#si no es ni ttf, ni otf entonces es ttc
elif ['ls $direccion/$nombre/$nombre.ttc | grep .ttc' == $direccion/$nombre/$nombre.ttc]
then
chmod +w $nombre.ttc
mv $nombre.ttc/usr/share/fonts/$nombre
#ya esta instalada la fuente ttc
#removemos la carpeta que creamos y los archivos del proceso
rm -rf $direccion/$nombre
cd ..
echo "archivo instalado"
fi

#=================================================================================================
#=================================================================================================
#=================================# ya instalamos #===========================================
