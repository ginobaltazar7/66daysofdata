# [Part 7] Building Your Own LLM Application

## TL;DR

Part 7 covers will be slightly lengthier, covering practical considerations and approaches to showcase how LLMs can be employed in the application development context. 

There are essentially 3 ways to deploy LLM's

    Prompts

    API

    Agentic

Discussion will start with basic examples, then gradually advancing to more complex features. It focuses on foundational understanding through simple, non-production applications.

Each section:

    Explains key components

    Offers code samples and resources

    Highlights popular frameworks like LangChain, LlamaIndex, Hugging Face, and Amazon Bedrock

The aim is to help you explore and choose the right tools to build your own LLM-based applications step by step. 


## A. Prompts 

### 1. Simple Prompt based LLM

**Prompt:** A prompt, in this context, is essentially a carefully constructed question, request or instruction that guides the model in generating a response. 

Prompts form the core of LLM interactions, clearly communicating the user's intent or question. Effective prompt design is essential for generating accurate outputs. Prompt engineering, explored in detail in earlier content, is key to successful LLM application development.

For example:

```python
# Define the prompt template with placeholders
prompt_template = "Provide expert advice on the following topic: {topic}."
# Fill in the template with the actual topic
prompt = prompt_template.replace("{topic}", topic)
# API call to an LLM
llm_response = call_llm_api(topic)
	
```

### Resources/Code for Simple Prompts

1. [LangChain cookbook for simple LLM Application](https://python.langchain.com/docs/expression_language/cookbook/prompt_llm_parser)
2. [Hugging Face + LangChain in 5 mins by AI Jason](https://www.youtube.com/watch?v=_j7JEDWuqLE)
3. [Using LLMs with LlamaIndex](https://docs.llamaindex.ai/en/stable/understanding/using_llms/using_llms.html)
4. [Getting Started with LangChain by Leonie Monigatti](https://towardsdatascience.com/getting-started-with-langchain-a-beginners-guide-to-building-llm-powered-applications-95fc8898732c)
5. [Running an LLM on your own laptop by Learn Data with Mark](https://github.com/mneedham/LearnDataWithMark/blob/main/llm-own-laptop/notebooks/LLMOwnLaptop.ipynb)

---

### 2. Prompt Chains

Prompt chaining is the process of asking an LLM multiple questions in sequence, where each question builds on the previous answer. This step-by-step method helps guide the LLM through complex tasks. Tools like LangChain support this by enabling developers to chain prompts and responses together, making it easier to build multi-step LLM workflows—especially useful for more complex applications.

[LangChain's documentation](https://js.langchain.com/docs/modules/chains/) offers guidance on more complex chaining techniques.

[Python Langchain resource](https://python.langchain.com/docs/expression_language/cookbook/retrieval)

```python
prompt1 ="what topic is the following question about-{question}?"
prompt2 = "Provide expert advice on the following topic: {topic}."
```

### Resources/Code with Chaining Prompts

1. [Prompt Chaining Article on Prompt Engineering Guide](https://www.promptingguide.ai/techniques/prompt_chaining)
2. [LLM Chains using GPT 3.5 and other LLMs — LangChain #3 James Briggs](https://www.youtube.com/watch?v=S8j9Tk0lZHU)
3. [LangChain Basics Tutorial #2 Tools and Chains by Sam Witteveen ](https://www.youtube.com/watch?v=hI2BY7yl_Ac)
4. [LangChain tools and Chains Colab notebook by Sam Witteveen](https://colab.research.google.com/drive/1zTTPYk51WvPV8GqFRO18kDe60clKW8VV?usp=sharing)



### **3. Adding Retrieval-Augmented Generation (RAG)**

Retrieval-Augmented Generation (RAG), already covered in Part 4, enhances LLMs by connecting them to an external knowledge base, allowing them to provide more accurate and up-to-date responses. Instead of relying solely on pre-trained knowledge, RAG enables the LLM to first retrieve relevant documents and then generate answers using both the retrieved content and its own reasoning.

Key components of a RAG system include:

    Vector Database (Knowledge Base): A collection of documents transformed into high-dimensional vectors that capture semantic meaning, enabling efficient similarity searches.

    Retrieval Component:

        Query Encoding: Converts the user's question into a vector.

        Similarity Search: Finds the closest matches in the vector database.

        Information Retrieval: Pulls the most relevant documents.

        Aggregation (optional): Summarizes or combines information before passing it to the LLM.

By combining retrieval with generation, RAG systems deliver fact-based, contextually relevant answers, making them ideal for use cases requiring current or domain-specific information.

### Resources/Code with RAG

1. [All You Need to Know to Build Your First LLM App by Dominik Polzer](https://towardsdatascience.com/all-you-need-to-know-to-build-your-first-llm-app-eb982c78ffac)
2. [RAG from Scratch series by LangChain](https://www.youtube.com/watch?v=wd7TZ4w1mSw&list=PLfaIDFEXuae2LXbO1_PKyVJiQ23ZztA0x)
3. [A deep dive into Retrieval-Augmented Generation with LlamaIndex](https://www.youtube.com/watch?v=Y0FL7BcSigI&t=3s)
4. [RAG using LangChain with Amazon Bedrock Titan text, and embedding, using OpenSearch vector engine notebook](https://github.com/aws-samples/rag-using-langchain-amazon-bedrock-and-opensearch)
5. [LangChain - Advanced RAG Techniques for better Retrieval Performance by Coding Crashcourses](https://www.youtube.com/watch?v=KQjZ68mToWo)
6. [Chatbots with RAG: LangChain Full Walkthrough by James Briggs](https://www.youtube.com/watch?v=LhnCsygAvzY&t=11s)


## B. APIs with LLMs

Integrating external tools like APIs into LLM applications greatly enhances their journey into production grade security, scale, security, accuracy and relevance

Utilizing GCP, Azure, and AWS for LLM deployments depends on your organization’s existing cloud footprint, AI strategy, and specific project requirements. Each provider offers robust tooling for training, deploying, and monitoring large models, but they differentiate in their ecosystem services, pricing structures, and hardware options.

For example, in a travel planner LLM app, an API can be utilized to check and add seasonal availability of destinations on demand or more in real time. If a location was recently closed, the LLM can adapt its recommendations. This approach enables dynamic, real-time responses based on current data. Beyond travel, similar integrations can enrich applications with live weather updates, stock market trends, or breaking news, making LLMs more responsive and context-aware across diverse use cases. 

### Resources/Code for APIs

1. [Leveraging Large Language Models (LLMs) in Production: A Comparison of GCP, Azure, and AWS](https://faun.pub/leveraging-large-language-models-llms-in-production-a-comparison-of-gcp-azure-and-aws-9358bdd4375c?gi=90a4353417ad)
2. [List of LLM tools by LangChain](https://python.langchain.com/docs/integrations/tools)
3. [Tools in LlamaIndex](https://docs.llamaindex.ai/en/stable/module_guides/deploying/agents/tools/root.html)
4. [Building Custom Tools and Agents with LangChain by Sam Witteveen](https://www.youtube.com/watch?v=biS8G8x8DdA)


## C. Agentic

LLM agents are more sophisticated LLM systems that combine language models with modules like planning, memory, and tool use to perform complex tasks and make decisions. 

For example, in financial planning, an agent can analyze spending data, evaluate budgets, and provide personalized recommendations by accessing stored information, using external tools, and following a structured plan. The LLM acts as the brain, while planning breaks down tasks, memory tracks relevant data, and tools handle computations or external queries. This modular approach enables agents to deliver intelligent, tailored solutions across diverse use cases.

LLM agents make decisions by combining several components:

    The LLM acts as the central controller, interpreting input and managing tasks.

    Planning breaks tasks into actionable steps.

    Memory stores and recalls relevant information.

    Tool usage enables access to external data and functions.

These modules work together to handle complex tasks, and existing frameworks offer tools to help build such agents.

### Resources/Code

1. [Agents in LangChain](https://python.langchain.com/docs/modules/agents/)
2. [Agents in LlamaIndex](https://docs.llamaindex.ai/en/stable/module_guides/deploying/agents/root.html)
3. [LangChain Agents - Joining Tools and Chains with Decisions by Sam Witteveen](https://www.youtube.com/watch?v=ziu87EXZVUE&t=59s)
4. [Building Your First LLM Agent Application by Nvidia](https://developer.nvidia.com/blog/building-your-first-llm-agent-application)
5. [OpenAI Functions + LangChain : Building a Multi Tool Agent by Sam Witteveen](https://www.youtube.com/watch?v=4KXK6c6TVXQ)

### Fine-Tuning and Memory Considerations

Fine-Tuning is needed when pre-trained LLMs lack domain-specific knowledge. It updates the model before applying other techniques but requires more resources than standard prompting.

Memory allows LLMs to retain and use past interactions in ongoing conversations. Tools like LangChain’s Conversation Buffer Memory help store and retrieve dialogue history to provide context in multi-turn interactions.

### Resources/Code

1. [Conversational Memory for LLMs with LangChain](https://www.pinecone.io/learn/series/langchain/langchain-conversational-memory/)
2. [How to add memory to a chat LLM model by Nikolay Penkov](https://medium.com/@penkow/how-to-add-memory-to-a-chat-llm-model-34e024b63e0c)
3. [Memory in LlamaIndex documentation](https://docs.llamaindex.ai/en/latest/api_reference/memory.html)
4. [LangChain: Giving Memory to LLMs by Prompt Engineering](https://www.youtube.com/watch?v=dxO6pzlgJiY)
5. [Building a LangChain Custom Medical Agent with Memory](https://www.youtube.com/watch?v=6UFtRwWnHws)

### Resources/Code

1. [How to Fine-Tune LLMs in 2024 with Hugging Face by philschmid](https://www.philschmid.de/fine-tune-llms-in-2024-with-trl)
2. [Fine-tuning Large Language Models (LLMs) | w/ Example Code by Shaw Talebi](https://www.youtube.com/watch?v=eC6Hd1hFvos)
3. [Fine-tuning LLMs with PEFT and LoRA by  Sam Witteveen](https://www.youtube.com/watch?v=Us5ZFp16PaU&t=261s)
4. [LLM Fine Tuning Crash Course: 1 Hour End-to-End Guide by AI Anytime](https://www.youtube.com/watch?v=mrKuDK9dGlg)
5. [How to Fine-Tune an LLM series by Weights and Biases](https://wandb.ai/capecape/alpaca_ft/reports/How-to-Fine-Tune-an-LLM-Part-1-Preparing-a-Dataset-for-Instruction-Tuning--Vmlldzo1NTcxNzE2)


## Read or Watch More

1. [LangChain How to and Guides by Sam Witteveen](https://www.youtube.com/watch?v=J_0qvRt4LNk&list=PL8motc6AQftk1Bs42EW45kwYbyJ4jOdiZ)
2. [LangChain Crash Course For Beginners | LangChain Tutorial by codebasics](https://www.youtube.com/watch?v=nAmC7SoVLd8)
3. [Build with LangChain Series](https://www.youtube.com/watch?v=mmBo8nlu2j0&list=PLfaIDFEXuae06tclDATrMYY0idsTdLg9v)
4. [LLM hands on course by Maxime Labonne](https://github.com/mlabonne/llm-course)
