# Address Matching

March 2024

The goal of the demo below is to match two lists of street addresses using similarity algorithms.

Distance-based algorithms, measure the minimum number of single-character operations (insertions, deletions, or substitutions) required to transform one string into another. 

Token-based algorithms compare strings based on their constituent tokens or words.

The demo uses the `libpostal` library to normalize street addresses and the `distance` library to measure the degree of the matches.

The `distance` package provides helpers for computing similarities between arbitrary sequences. 

The Levenshtein Distance between 2 strings is the number of insertions, deletions, or substitutions required to convert string 1 to string 2. So the lower the distance (i.e. the smaller the number returned), or the closer to zero, the more similar strings are.

The Hamming Distance between 2 strings is the number of substitutions required to convert string 1 to 2 or vice versa; it requires strings of same lengths. 

The Jaccard measures how similar two strings are by comparing their shared elements with their total combined elements. The closer the ratio is to zero, the more similar the strings.

The Sorensen measures the ratio of twice the number of shared elements (intersection) between the strings to the sum of the lengths of the strings. The closer the ratio is to zero, the more similar the strings.


### Open in Colab

[![Open 'Address Matching' In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ginobaltazar7/SQL/address_matching/blob/master/Address_Matching.ipynb)


### Made using 
[![Python](https://img.shields.io/badge/python%20-%2314354C.svg?&style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)


### Using Postgres (via Docker)
Address comparison can also be accomplished through the [`tsvector` type](https://www.postgresql.org/docs/16/datatype-textsearch.html) and its cousin [`tsquery`](https://www.postgresql.org/docs/16/functions-textsearch.html) available via [Postgres Fuzzymatch](https://www.postgresql.org/docs/current/fuzzystrmatch.html#FUZZYSTRMATCH-LEVENSHTEIN). 

This requires uploading address files into Postgres tables and using built-in SQL `Select` and SQL operators in Postgres to search for similarities and distances between address strings. 

The SQL example uses the `phraseto_tsquery -> tsquery` Postgres text search operator which first converts text to a tsquery then compares and results in a boolean.

[tsquery and tsvector in postgres](https://medium.com/geekculture/comprehend-tsvector-and-tsquery-in-postgres-for-full-text-search-1fd4323409fc)
[Full Text Search in Postgres/MySQL](https://dbconvert.com/blog/mysql-and-postgresql-for-advanced-full-text-search/)

Postgres can be instantiated on a localhost via Docker. 

[Easy Postgres setup on Mac](https://youtu.be/0CfL_JBB83A?si=AsXUctuwWMcjZnqt)
[Docker Hub for Postgres](https://hub.docker.com/_/postgres/)
[How to Use Postgres Docker](https://www.docker.com/blog/how-to-use-the-postgres-docker-official-image/)
[](https://www.postgresql.org/docs/16/functions-textsearch.html)

### Resources
[Doc on Distance Lib Python](https://pypi.org/project/Distance/)

[Libpostal's expand_address to normalize](https://stackoverflow.com/questions/54599526/why-does-libpostal-pypostal-expand-address-output-an-array)

[Street Group Address Matching using NLP](https://medium.com/streetgroup/a-street-group-address-matching-algorithm-e7e1444767cd)

[Is there a Library for Parsing US Addresses](https://stackoverflow.com/questions/9463471/is-there-a-library-for-parsing-us-addresses)

[Creating Vectors from text for address matching using binary classification](https://datascience.stackexchange.com/questions/15832/how-to-create-vectors-from-text-for-address-matching-using-binary-classification)

[Complete Guide to String Similarity Algorithms](https://yassineelkhal.medium.com/the-complete-guide-to-string-similarity-algorithms-1290ad07c6b7)

[Address Matching in Emergent Mind](https://www.emergentmind.com/search?q=address+matching) 