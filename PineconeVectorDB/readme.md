# Exploring Pinecone

The following is a vector db exercise using Pinecone, a commercial provider of fully managed vector databases, following the FAISS sentence embedding exercise the week before.

To recall, sentence embedding is a way to tokenize or numerically represent sentences, as vectors.

There are three concepts to know with Pinecone:

1) A Pinecone index is conceptually like a traditional DB table, an organizational unit of vector data. Vector indices store vectors, and serve query operations. 

2) Operations on indices are executed on Pinecone pods, conceptually not unlike a cluster, a hardware unit.  Each Pinecone pod contains resources to support approximately 100,000 vectors with 1,536 dimensional embeddings. Additional pods can be ordered as needed to scale apps.  

3) Lastly, Pinecone allows data partitioning into namespaces, not unlike sharding in traditional DBs like Hive, where generally the motivation is to improve query performance via data segmentation. 

Why use Pinecone? Pinecone supports real-time data updates, contrasts with standalone vector indexes, which may require a full ie time-consuming re-indexing process to incorporate new data. 

### Read more  

How Vector Databases Work -> https://newsletter.theaiedge.io/p/deep-dive-how-do-vector-databases

Inserting Pinecone Vectors using this [helpful readme](https://docs.pinecone.io/docs/insert-data) and this equally [helpful Youtube](https://www.youtube.com/playlist?list=PLRLVhGQeJDTLiw-ZJpgUtZW-bseS2gq9-)

Useful video [Pinecone vs FAISS](https://www.youtube.com/watch?v=wHltI4kPKjk) vs pgvector - will cover pgvector in a future exercise.

[Pinecone's popularity compared to other vector DB's](https://db-engines.com/en/ranking/vector+dbms)

### Open in Colab

[![Open Pinecone Vector DB In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ginobaltazar7/66daysofdata/blob/master/PineconeVectorDB/PineconePoC2.ipynb)

### Made using 
[![Python](https://img.shields.io/badge/python%20-%2314354C.svg?&style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)


### Support Me

If you like my work consider supporting me!

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/ginobaltazar)