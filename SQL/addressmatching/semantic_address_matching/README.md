# Address_matching Resource

Semantic address matching POC using Deep Learning

Code sourced from the paper **A Deep Learning Architecture for Semantic Address Matching (Lin *et al.* 2019) - see references folder**.

### Files overview

  - `geo_config.py` Hyperparameter settings for the ESIM
  - `geo_data_prepare.py` Tokenize the corpus and convert each address element into index
  - `geo_data_processor.py` Process the labeled address dataset and divide it into training, development and test sets
  - `geo_ESIM.py` Implementation of the enhanced sequential inference model (ESIM)
  - `geo_similarity.py` Calculate statistical characteristics of the labeled address dataset
  - `geo_test.py` Output predictive results of the ESIM on the test set
  - `geo_token.py` Tokenize with the Jieba library
  - `geo_train.py` Train the ESIM and evaluate its accuracy on the development set
  - `geo_word2vec.py` Train word vectors of address elements
  - `other_CRF.py` Tokenize using CRF **[Comber and Arribas-Bel (2019)]** 
  - `other_crf_w2v.py` Train word vectors of address elements (CRF tokenizer)
  - `other_string.py` String similarity-based address matching methods: measure the string relevance
  - `other_w2v_cls.py` Use word2vec embeddings directly for classification: calculate cosine similarity


## Resources
[Use of Libpostal](https://stackoverflow.com/questions/54599526/why-does-libpostal-pypostal-expand-address-output-an-array)

[Street Address Matching Algorithm](https://medium.com/streetgroup/a-street-group-address-matching-algorithm-e7e1444767cd)

[Stackoverflow library for parsing US Addresses](https://stackoverflow.com/questions/9463471/is-there-a-library-for-parsing-us-addresses)

[Vectors for Address Matching](https://datascience.stackexchange.com/questions/15832/how-to-create-vectors-from-text-for-address-matching-using-binary-classification)

