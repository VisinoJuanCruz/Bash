generarReporte(){
    for i in $(cat /etc/passwd | cut -d: -f1)
        do
             echo $i $(locate *$i*$1* | wc -l)

        
        done
    
}

if [ $# -ne 1 ];then
    echo "Al script se le debe pasar unicamente la extencion de los textos."
    else
        generarReporte $1 > reporte.txt
fi