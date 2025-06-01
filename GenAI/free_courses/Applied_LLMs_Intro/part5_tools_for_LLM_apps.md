# [Part 5] Tools for Building LLM Applications

## TL;DR

Technologies and tooling that facilitate the creation and enhancement of LLM applications are essential not only for the developer experience in organizations but also for the UX customer experience in the end products that utilize LLMs. 

This includes Custom Model Adaptation for bespoke solutions, RAG-based Applications for contextually rich responses, and an extensive range of tools for input processing, development, application management, and output analysis. Through this comprehensive overview, we aim to equip you with the knowledge to leverage both proprietary and open-source models, alongside advanced development, hosting, and monitoring tools. 

## Types of LLM Applications

LLM applications are rapidly expanding, with companies adopting them in three main ways:

1. **Custom Model Adaptation** – Involves building models from scratch or fine-tuning existing ones. Though powerful, it requires significant expertise and resources.

2. **RAG-Based Applications** – The most common and accessible method, Retrieval-Augmented Generation (RAG) uses pre-trained models and enriches them with relevant external data retrieved from vector databases. It's scalable, cost-effective, and addresses limitations like context window size, making it ideal for many real-world applications.


## Types of Tools

We can broadly categorize tools into four major groups:

1. **Input Processing Tools**: These are tools designed to ingest data and various inputs for the application.
2. **LLM Development Tools**: These tools facilitate interaction with the Large Language Model, including calling, fine-tuning, conducting experiments, and orchestration.
3. **Output Tools**: These tools are utilized for managing the output from the LLM application, essentially focusing on post-output processes.
4. **Application Tools**: These tools oversee the comprehensive management of the aforementioned three components, including application hosting, monitoring, and more.

RAG-based applications generally follow this process:

1. A user submits a query.

2. The system uses embedding search to retrieve relevant data from a vector database.

3. The query and retrieved documents are sent to the LLM for processing.

4. The response is returned to the user.

This process includes hosting and monitoring LLM responses. In fine-tuning scenarios, a similar workflow applies, but additional resources and frameworks are needed for model training. Vector databases may be optional depending on whether external data is used.

## LLM Application Development – Tooling Overview

1. Input Processing Tools

    Data Pipelines/Sources: Use ETL tools (e.g., Databricks, Apache Airflow) and document loaders (e.g., LangChain, LlamaIndex) to handle structured and unstructured data like PDFs, CSVs, SQL tables.

    Vector Databases: Store and retrieve embeddings efficiently using tools like Pinecone, Weaviate, Qdrant, or local libraries (Faiss, Chroma). Some integrate with Postgres via pgvector.

2. LLM Development Tools

    Models: Developers can choose between proprietary APIs (e.g., OpenAI’s GPT-4 or Anthropic's Claude) and open-source models (e.g., from Hugging Face or OLlama). Open-source models offer flexibility and cost benefits, especially as their quality improves.

    Orchestration: Tools like LangChain and LlamaIndex manage prompt chaining, context injection, API handling, and vendor-agnostic LLM usage.

    Compute/Training: Use cloud platforms (AWS, Fireworks.ai) and frameworks like PyTorch and TensorFlow for training or fine-tuning. API-based apps often don’t require direct compute resources.

    Experimentation: Tools like Weights & Biases, MLflow, and Statsig track model training, performance, and A/B testing, mostly useful in training/fine-tuning contexts.

3. Application Tools

    Hosting: Apps and models can be hosted via cloud platforms (e.g., Vercel, OctoML, Replicate) or browser/edge deployments for lower latency and cost.

    Monitoring: Tools like LangKit, Gantry, and Helicone provide real-time visibility into model performance, costs, and user interaction metrics.

4. Output Tools

    Evaluation: Evaluate LLMs using prompt engineering platforms (e.g., Humanloop, PromptLayer) and production performance tools (Honeyhive, Scale AI) to balance accuracy, cost, and latency.

This ecosystem of tools supports the full lifecycle of LLM app development, from data ingestion to evaluation, helping developers build scalable, efficient, and high-performing AI applications.

## Read or Watch More

1. [https://www.secopsolution.com/blog/top-10-llm-tools-in-2024](https://www.secopsolution.com/blog/top-10-llm-tools-in-2024)
2. [https://www.sequoiacap.com/article/llm-stack-perspective/](https://www.sequoiacap.com/article/llm-stack-perspective/)
3. [https://www.codesmith.io/blog/introducing-the-emerging-llm-tech-stack](https://www.codesmith.io/blog/introducing-the-emerging-llm-tech-stack)
4. [https://stackshare.io/index/llm-tools](https://stackshare.io/index/llm-tools)
5. [https://stackoverflow.com/questions/76990736/differences-between-langchain-llamaindex](https://stackoverflow.com/questions/76990736/differences-between-langchain-llamaindex)