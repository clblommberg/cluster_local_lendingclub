#!/bin/bash

# Nombre del contenedor de Hadoop  
HADOOP_CONTAINER=cluster_hive-namenode-1

# Directorio local dentro del contenedor
LOCAL_DIR=/tmp/data

# Crear directorio local si no existe 
docker exec $HADOOP_CONTAINER mkdir -p $LOCAL_DIR

# Copiar archivos al directorio local
docker cp datasets/raw/accepted_2007_to_2018Q4.csv.gz $HADOOP_CONTAINER:$LOCAL_DIR
docker cp datasets/raw/rejected_2007_to_2018Q4.csv.gz $HADOOP_CONTAINER:$LOCAL_DIR

docker exec $HADOOP_CONTAINER hdfs dfs -mkdir -p /datasets/raw

# Esperar que los archivos estén disponibles
sleep 10

# Subir archivos de directorio local a HDFS  
docker exec $HADOOP_CONTAINER hdfs dfs -put $LOCAL_DIR/accepted_2007_to_2018Q4.csv.gz /datasets/raw
docker exec $HADOOP_CONTAINER hdfs dfs -put $LOCAL_DIR/rejected_2007_to_2018Q4.csv.gz /datasets/raw

#Logeate dentro del contendor y verifica los archivos
#hdfs dfs -ls /datasets/raw/


