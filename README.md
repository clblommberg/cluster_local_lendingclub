# Proyecto de cluster local con haddop, pyspark y airflow


This dataset contains the full LendingClub data available from [their site](https://www.lendingclub.com). There are separate files for accepted and rejected loans. The accepted loans also include the FICO scores, which can only be downloaded when you are signed in to LendingClub and download the data (https://www.kaggle.com/datasets/wordsforthewise/lending-club).


#### Inicio de Docker y Contenedores
```bash
docker-compose up -d
```
#### Cluster local
```bash
http://127.0.0.1:8888/hue/oozie/editor/workflow/new/				## Data Warehouse Hive
http://0.0.0.0:50070/dfshealth.html#tab-overview					## Information nodes
http://0.0.0.0:50075/							
http://127.0.0.1:8889/lab/   ## notebook pyspark
```

```
├── data
│   └── raw
│       ├── accepted_2007_to_2018Q4.csv.gz
│       └── rejected_2007_to_2018Q4.csv.gz
```

```bash
./upload_data.sh
```

### Inicio del Proyecto
```bash
http://127.0.0.1:8889/lab/tree/cluster_hive/notebook/exploratory_analysis_EDA.ipynb  ### INiciamos con el EDA
```
#### Tengo mi cerebrito ! estoy cansado jefe !



#### Referencias:
Docker. (2024). Docker.com. https://hub.docker.com/u/bde2020

George, N. (2018). All Lending Club loan data (Version 3) [Data set]. Kaggle. https://www.kaggle.com/wordsforthewise/lending-club
