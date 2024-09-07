# Primero borro si ya existe para cuando hago cambios
sudo docker exec -it hive-server bash -c "
cd hive
cd scripts
rm Paso02.hql
cd ..
cd ..
exit
"

# Copio el hql al contenedor
sudo docker cp Paso02.hql hive-server:/opt/hive/scripts/Paso02.hql
# Ejecuto el contenedor
sudo docker exec -it hive-server bash
# Ejecuto el hql desde el contenedor
hive -f /opt/hive/scripts/Paso02.hql
# Salgo del contenedor
sudo docker exec -it hive-server bash -c "exit"