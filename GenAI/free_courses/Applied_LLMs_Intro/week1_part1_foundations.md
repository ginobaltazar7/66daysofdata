# [Week 1, Part 1] Applied LLM Foundations and Real World Use Cases


## TL;DR

The field of LLM's or Large Language Models, conceptually at its core, is not really new. We'll first define what it is, examine its history, then its core attributes, touching on what innovations enabled its scale, and what firms are being created to help deploy and serve applications. Finally, we'll touch on the types of challenges associated with using LLMs.

## What are LLM's

Source (author: Chiara Caprasi): [https://medium.com/womenintechnology/ai-c3412c5aa0ac](https://medium.com/womenintechnology/ai-c3412c5aa0ac)

As we can see in Ms. Caprasi's diagram, Large Language Models is one subfield among many in AI. Moreover while ChatGPT is often associated with LLMs, it really is a component if not example of the latter.  

**Artificial Intelligence (AI)** is a branch of Computer Science that involves creating human-like thinking and behaving machines, made popular in cinematic films like the Terminator or Star Wars.

**Machine Learning(ML)**, a subfield of AI, enables machines to learn patterns from data and make predictions based on the structure of data and mathematical algebraic computations.

**Neural Networks (NNs)**, a subset of ML, mimic human brain signaling across so called network layers that transform those signals so they become more meaningful. 

**Deep Learning (DL)**, a subset of NN, adds more layers to specific depths so the attenuation of signal transformation is enhanced. DL's are thus used for more complex use cases such as image recognition and language translation. One of my favorite DL applications is Google Translate on mobile and use it extensively in countries I travel to. 

**Generative AI (GenAI)**, a subset of DL, as its name suggests, generates artificial content - whether text, photos, images, sound - based on learned patterns.  The applications of GenAI are increasing, penetrating the worlds of media, social, finance and even now the [public sector](https://dl.acm.org/doi/10.1145/3700140).

**Large Language Models (LLMs)**, is an application of GenAI to generate human-like text and language by learning from extensive textual data inputs. The term "Large" refers to the sheer scale of these models — both in terms of the size of their architecture and the vast amount of textual data input  the models are trained on.

## History and Background

Generative AI is not a brand new concept. One notable early example of early generative AI is the [Markov chain](https://www.csail.mit.edu/news/explained-generative-ai), a statistical model introduced by Russian mathematician Andrey Markov in 1906. Markov models were initially used for tasks like next-word prediction, but its simplicity was limited by its ability to look only so far back to generate accurate text.

Over the years since then, more powerful architectures and Big Data emerged thanks to the advancement of the Internet, social and mobile. 

In 2014, generative adversarial networks or [GANS](https://developers.google.com/machine-learning/gan/gan_structure) emerged. GANS operated on the concept of a data "generator" versus a data "discrimnator" — one generating output and the other discriminating real data from the generated output. It improved the ability to generate "fake" versus "real" data.

In 2015, [diffusion models](https://www.sapien.io/blog/gans-vs-diffusion-models-a-comparative-analysis) operating on the concept of "denoising" generated output iteratively as training proceeded. This innovation, as seen in Stable Diffusion, contributed to the creation of realistic-looking images.

In 2017, Google introduced the [Transformer architecture](https://research.google/blog/transformer-a-novel-neural-network-architecture-for-language-understanding/), a novel breakthrough that encoded each word as a token, and then generated an attention map that captured relationships between tokens. This attention to context enhances the model's ability to generate coherent text, exemplified by large language models like ChatGPT.

The generative AI boom thus owes its momentum not only to larger datasets but also to these preceding diverse research advances.

## Living Large

Larger input datasets and architectures coupled with innovations in chipsets like GPU or software like Transformers enabled sifting of more complex patterns and relationships in languages and text. 

Popular LLMs like Meta's LLaMA, GPT-x, Gemini, Claude etc. have thousands of billion model parameters. In the context of machine learning, model parameters are like the knobs and switches that the algorithm tunes during training to make accurate predictions or generate meaningful outputs.

The number of models is increasing as a result of the various takes on those knobs and switches. Take a look at the infographic from “Information is beautiful” below to see how many parameters recent LLMs have. You can view the live visualization [here](https://informationisbeautiful.net/visualizations/the-rise-of-generative-ai-large-language-models-llms-like-chatgpt/)

Source: [https://informationisbeautiful.net/visualizations/the-rise-of-generative-ai-large-language-models-llms-like-chatgpt/](https://informationisbeautiful.net/visualizations/the-rise-of-generative-ai-large-language-models-llms-like-chatgpt/) 

## Training LLMs

Training LLMs is a complex process that involves instructing the model to comprehend and produce human-like text. Here's a simplified breakdown of how LLM training works:

1. **Providing Input Text:**
    - LLMs are initially exposed to extensive and clean text data, encompassing various sources such as books, articles, and websites.
    - The model's task during training is to predict the next word or token in a sequence based on the context provided. It learns patterns and relationships within the text data.
2. **Optimizing Model Weights:**
    - The model comprises different weights associated with its parameters, reflecting the significance of various features.
    - Throughout training, these weights are fine-tuned to minimize the error rate. The objective is to enhance the model's accuracy in predicting the next word.
3. **Fine-tuning Parameter Values:**
    - LLMs continuously adjust parameter values based on error feedback received during predictions.
    - The model refines its grasp of language by iteratively adjusting parameters, improving accuracy in predicting subsequent tokens.

The training process may vary depending on the specific type of LLM being developed, such as those optimized for continuous text or dialogue.

LLM training performance, which often takes several days or weeks, is heavily influenced by two key factors:

- **Model Architecture:** The design and intricacy of the LLM architecture impact its ability to capture language nuances.
- **Dataset:** The quality, cleanliness and diversity of the dataset utilized for training are crucial in shaping the model's language understanding.

There are three common learning models:

1. **Zero-shot learning:** The base LLMs can handle a wide range of requests without explicit training, often by using prompts, though the accuracy of responses may vary.
2. **Few-shot learning:** By providing a small number of pertinent training examples, the performance of the base model significantly improves in a specific domain.
3. **Domain Adaptation:** This extends from few-shot learning, where practitioners train a base model to adjust its parameters using additional data relevant to the particular application or domain.

This intro will later do a deeper dive into each of these methods.

## LLM Real World Use Cases

LLMs are already being leveraged in various applications showcasing their versatility and power of these models in transforming several domains. Here's how LLMs can be applied to specific cases:


1. **Content Generation:**
    - LLMs excel in content generation by understanding context and generating coherent and contextually relevant text. They can be employed to automatically generate creative content for marketing, social media posts, and other communication materials, ensuring a high level of quality and relevance.
    - **Real World Applications:** Marketing platforms, social media management tools, content creation platforms, advertising agencies
2. **Language Translation:**
    - LLMs can significantly improve language translation tasks by understanding the nuances of different languages. They can provide accurate and context-aware translations, making them valuable tools for businesses operating in multilingual environments. This can enhance global communication and outreach.
    - **Real World Applications**: Translation services, global communication platforms, international business applications
3. **Text Summarization:**
    - LLMs are adept at summarizing lengthy documents by identifying key information and maintaining the core message. This capability is valuable for content creators, researchers, and businesses looking to quickly extract essential insights from large volumes of text, improving efficiency in information consumption.
    - **Real World Applications**: Research tools, news aggregators, content curation platforms
4. **Question Answering and Chatbots:**
    - LLMs can be employed for question answering tasks, where they comprehend the context of a question and generate relevant and accurate responses. They enable these systems to engage in more natural and context-aware conversations, understanding user queries and providing relevant responses.
    - **Real World Applications***:* Customer support systems in both private and public sectors, chatbots, virtual assistants, educational platforms.
5. **Content Moderation:**
    - LLMs can be utilized for content moderation by analyzing text and identifying potentially inappropriate or harmful content. This helps in maintaining a safe and respectful online environment by automatically flagging or filtering out content that violates guidelines, ensuring user safety.
    - **Real World Applications**: Social media platforms, online forums, community management tools.
6. **Information Retrieval:**
    - LLMs can enhance information retrieval systems by understanding user queries and retrieving relevant information from large datasets. This is particularly useful in search engines, databases, and knowledge management systems, where LLMs can improve the accuracy of search results.
    - **Real World Applications**: Search engines, database systems, knowledge management platforms
7. **Educational Tools:**
    - LLMs contribute to educational tools by providing natural language interfaces for learning platforms. They can assist students in generating summaries, answering questions, and engaging in interactive learning conversations. This facilitates personalized and efficient learning experiences.
    - **Real World Applications**: E-learning platforms, educational chatbots, interactive learning applications

**Summary of popular LLM use-cases**

| No. | Use case | Description |
| --- | --- | --- |
| 1 | Content Generation | Craft human-like text, videos, code and images when provided with instructions |
| 2 | Language Translation | Translate languages from one to another |
| 3 | Text Summarization | Summarize lengthy texts, simplifying comprehension by highlighting key points. |
| 4 | Question Answering and Chatbots | LLMs can provide relevant answers to queries, leveraging their vast knowledge |
| 5 | Content Moderation | Assist in content moderation by identifying and filtering inappropriate or harmful language |
| 6 | Information Retrieval | Retrieve relevant information from large datasets or documents. |
| 7 | Educational Tools | Tutor, provide explanations, and generate learning materials. |

Understanding the utilization of generative AI models, especially LLMs, can also be gleaned from the extensive array of startups operating in this domain. 

An [infographic](https://www.sequoiacap.com/article/generative-ai-act-two/) in an article "GenAI:Act Two" Sequoia Capital highlighted these companies across diverse sectors, illustrating the versatile applications and the significant presence of numerous players in the generative AI space.


Source: [https://markovate.com/blog/applications-and-use-cases-of-llm/](https://markovate.com/blog/applications-and-use-cases-of-llm/)

## LLM Challenges


Although LLMs have undoubtedly revolutionized various applications, numerous challenges persist. These challenges are categorized into different themes:

- **Data Challenges:** This pertains to the data used for training and how the model addresses gaps or missing data.
- **Ethical Challenges:** This  involves addressing issues such as mitigating biases, ensuring privacy, and preventing the generation of harmful content in the deployment of LLMs.
- **Technical Challenges:** These challenges focus on the practical implementation of LLMs.
- **Deployment Challenges:** Concerned with the specific processes involved in transitioning fully-functional LLMs into real-world use-cases (productionization)

**Data Challenges:**

1. **Data Bias:** The presence of prejudices and imbalances in the training data leading to biased model outputs.
2. **Limited World Knowledge and Hallucination:** LLMs may lack comprehensive understanding of real-world events and information and tend to hallucinate information. Note that training them on new data is a long and expensive process.
3. **Dependency on Training Data Quality:** LLM performance is heavily influenced by the quality and representativeness of the training data.

**Ethical and Social Challenges:**

1. **Ethical Concerns:** Concerns regarding the responsible and ethical use of language models, especially in sensitive contexts.
2. **Bias Amplification:** Biases present in the training data may be exacerbated, resulting in unfair or discriminatory outputs.
3. **Legal and Copyright Issues:** Potential legal complications arising from generated content that infringes copyrights or violates laws.
4. **User Privacy Concerns:** Risks associated with generating text based on user inputs, especially when dealing with private or sensitive information.

**Technical Challenges:**

1. **Computational Resources:** Significant computing power required for training and deploying large language models.
2. **Interpretability:** Challenges in understanding and explaining the decision-making process of complex models.
3. **Evaluation**: Evaluation presents a notable challenge as assessing models across diverse tasks and domains is inadequately designed, particularly due to the challenges posed by freely generated content.
4. **Fine-tuning Challenges:** Difficulties in adapting pre-trained models to specific tasks or domains.
5. **Contextual Understanding:** LLMs may face challenges in maintaining coherent context over longer passages or conversations.
6. **Robustness to Adversarial Attacks:** Vulnerability to intentional manipulations of input data leading to incorrect outputs.
7. **Long-Term Context:** Struggles in maintaining context and coherence over extended pieces of text or discussions.

**Deployment Challenges:**

1. **Scalability:** Ensuring that the model can scale efficiently to handle increased workloads and demand in production environments.
2. **Latency:** Minimizing the response time or latency of the model to provide quick and efficient interactions, especially in real-time applications.
3. **Monitoring and Maintenance:** Implementing robust monitoring systems to track model performance, detect issues, and perform regular maintenance to avoid downtime.
4. **Integration with Existing Systems:** Ensuring smooth integration of LLMs with existing software, databases, and infrastructure within an organization.
5. **Cost Management:** Optimizing the cost of deploying and maintaining large language models, as they can be resource-intensive in terms of both computation and storage.
6. **Security Concerns:** Addressing potential security vulnerabilities and risks associated with deploying language models in production, including safeguarding against malicious attacks.
7. **Interoperability:** Ensuring compatibility with other tools, frameworks, or systems that may be part of the overall production pipeline.
8. **User Feedback Incorporation:** Developing mechanisms to incorporate user feedback to continuously improve and update the model in a production environment.
9. **Regulatory Compliance:** Adhering to regulatory requirements and compliance standards, especially in industries with strict data protection and privacy regulations.
10. **Dynamic Content Handling:** Managing the generation of text in dynamic environments where content and user interactions change frequently.

## Read or Watch More

1. [https://www.nvidia.com/en-us/glossary/generative-ai/](https://www.nvidia.com/en-us/glossary/generative-ai/)
2. [https://markovate.com/blog/applications-and-use-cases-of-llm/](https://markovate.com/blog/applications-and-use-cases-of-llm/)
3. [https://www.sequoiacap.com/article/generative-ai-act-two/](https://www.sequoiacap.com/article/generative-ai-act-two/)
4. [https://datasciencedojo.com/blog/challenges-of-large-language-models/](https://datasciencedojo.com/blog/challenges-of-large-language-models/)
5. [https://snorkel.ai/enterprise-llm-challenges-and-how-to-overcome-them/](https://snorkel.ai/enterprise-llm-challenges-and-how-to-overcome-them/)
6. [https://www.youtube.com/watch?v=MyFrMFab6bo](https://www.youtube.com/watch?v=MyFrMFab6bo)
7. [https://www.youtube.com/watch?v=cEyHsMzbZBs](https://www.youtube.com/watch?v=cEyHsMzbZBs)

## Read More (Scientific papers)

1. [https://dl.acm.org/doi/abs/10.1145/3605943](https://dl.acm.org/doi/abs/10.1145/3605943)
2. [https://www.sciencedirect.com/science/article/pii/S2950162823000176](https://www.sciencedirect.com/science/article/pii/S2950162823000176)
3. [https://arxiv.org/pdf/2303.13379.pdf](https://arxiv.org/pdf/2303.13379.pdf)
4. [https://proceedings.mlr.press/v202/kandpal23a/kandpal23a.pdf](https://proceedings.mlr.press/v202/kandpal23a/kandpal23a.pdf)
5. [https://link.springer.com/article/10.1007/s12599-023-00795-x](https://link.springer.com/article/10.1007/s12599-023-00795-x)