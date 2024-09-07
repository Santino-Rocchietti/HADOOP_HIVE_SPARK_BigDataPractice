
# Copiar el hql al contenedor
sudo docker cp Paso02.hql hive-server:/opt/hive/scripts/Paso02.hql
# Ejecutar el contenedor
sudo docker exec -it hive-server bash
# Ejecutar el hql desde el contenedor
hive -f /opt/hive/scripts/Paso02.hql
# Salir del contenedor
sudo docker exec -it hive-server bash -c "exit"
