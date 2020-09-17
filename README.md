# EunomiaDocker
Docker files for hosting OMOP compliant CDMs for test purposes.
Currently a postgres databse with a OMOP CDM tables.
This is a work in progress, tables currently have no constraints.
Based off the Eunomia sqlite project.

## Requirements
Docker (tested on OSX with version 19.03.12)

## Usage
To build the docker container with Eunomia files

    docker build . -t eunomia_postgres

To run a container with this image (use `docker run -d` to run in daemon mode):

    docker run -p 54321:5432 eunomia_postgres

To connect (use the password postgres) :

    psql -h localhost -p 54321 -U postgres -W

# Data
To change the data modify the CSV files in the data folder.

## To do list
* Add constraints
* Other databases that can be containerized:
    * Oracle
    * Redshift (old version of postgres?)
    * sqlserver/pdw
* Some basic r code for integration testing