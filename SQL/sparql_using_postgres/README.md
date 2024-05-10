# Trying RDF Triplestore SparQL Wrapper in PostgreSQL

May 2024

The demo below attempts a PostgreSQL wrapper called `rdf_fdw` to access RDF triplestores via SparQL endpoints.

There are detailed setup instructions here -> [rdf_fdw readme](https://github.com/jimjonesbr/rdf_fdw)

The demo requires a running PostgreSQL instance and which in this demo's case was facilitated using Docker and a postgreSQLv16 image.

There is an additional note that in order for `rdf_fdw` to convert the data retrieved from the RDF triplestore into a format that can be interpreted by PostgreSQL, it must first load all the retrieved data into memory. Thus, if large volumes of data are done with a single query, PostgreSQL will need sufficient memory, or otherwise retrieve the data in chunks by using `rdf_fdw_clone_table` or an alternative customized script.


### Open in Colab

Coming Soon!

### Why This Matters

Ontologies can play a vital role in organizing and structuring data; they provide a standardized way to represent `knowledge` and gives learning machines additional contexts to understand and process information. 

These representations and relationships can be transformed into meaningful features for training models such as those for LLMs.

If you're working in Python, there are other libraries such as `rdflib` and `owlready2` that allow working with ontologies.

### Made using 
[![Python](https://img.shields.io/badge/python%20-%2314354C.svg?&style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)


### Using Postgres (via Docker)

Postgres can be instantiated on a localhost via Docker, or cloud like for example AWS EC2.

[Easy Postgres setup on Mac](https://youtu.be/0CfL_JBB83A?si=AsXUctuwWMcjZnqt)

[Docker Hub for Postgres](https://hub.docker.com/_/postgres/)

[How to Use Postgres Docker](https://www.docker.com/blog/how-to-use-the-postgres-docker-official-image/)

[Postgres in AWS EC2](https://dev.to/amedd/dockerize-a-postgresql-database-in-an-aws-ec2-instance-5dej)


### Resources
[Ontology Tools for Data Scientists and Machine Learning](https://medium.com/@iamshowkath/ontologies-a-key-tool-for-data-scientists-and-machine-learning-engineers-8a6c6c9d4d76)

[Protégé](https://protege.stanford.edu/) is a popular and powerful tool for creating and managing ontologies. It provides a user-friendly interface to define classes, properties, and relationships within the ontology.
