echo 'quieres abrir discord?'
read disd

case $disd in
    "si")
        discord
        ;;
    != "si")
        echo "yay kcho"
        ;;
esac
