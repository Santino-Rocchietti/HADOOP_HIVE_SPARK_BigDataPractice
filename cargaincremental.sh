# Navegar al directorio del repositorio
cd /home/HADOOP_HIVE_SPARK_BigDataPractice

# Actualizar el repositorio
git pull origin main

# Ejecutar el script de carga incremental
/spark/bin/spark-submit --master spark://spark-master:7077 Paso06_IncrementalVentas.py
