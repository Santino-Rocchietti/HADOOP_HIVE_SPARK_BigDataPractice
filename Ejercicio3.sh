
# Segun se indica en el Paso03.hql, este necesita sacar los datos de una carpeta /data2/ del HDFS
# Ejecutar comandos dentro del contenedor "namenode"

sudo docker exec -it namenode bash -c " 
    # Borro la carpeta si exite (por si hago cambios) y luego la creo en HDFS
    hdfs dfs -rm -R /data2
    hdfs dfs -mkdir -p /data2
    exit
"
Resultado: "Archivos .csv copiados a HDFS en /user/hadoop/data2/" 

# Copiar el hql al contenedor
sudo docker cp Paso03.hql hive-server:/opt/hive/scripts/Paso03.hql

# Ejecutar el contenedor
sudo docker exec -it hive-server bash
# Ejecutar el hql desde el contenedor
hive -f /opt/hive/scripts/Paso03.hql
# Salir del contenedor
sudo docker exec -it namenode bash -c "exit"
