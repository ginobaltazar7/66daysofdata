# [Part 6] LLM Evaluation Techniques

## TL;DR

Next up is a deep dive in evaluation techniques applied to LLMs, focusing on two dimensions- pipeline and model evaluations, examining how prompts are assessed for their effectiveness, leveraging tools like Prompt Registry and Playground, evaluating the quality of retrieved documents in RAG pipelines, and utilizing metrics such as Context Precision and Relevancy. 

Relevance metrics used to gauge response pertinence, including Perplexity and Human Evaluation, are next discussed along with specialized RAG-specific metrics like Faithfulness and Answer Relevance. Significance of alignment metrics in ensuring LLMs adhere to human standards, covering dimensions such as Truthfulness and Safety will also be covered. 

And lastly, the role of task-specific benchmarks like GLUE and SQuAD are discussed in assessing LLM performance across diverse real-world applications.

## Evaluating Large Language Models Overview

LLM evaluation involves assessing the entire pipeline, including the model, prompts, and retrieval (if using RAG). Evaluation is split into two main dimensions:

### A. LLM Pipeline Evaluation

1. Prompt Evaluation

    Prompts greatly affect output quality.

    Evaluation involves:

        Prompt registry/playground for testing.

        Manual or automatic methods (e.g., APE from Zhou et al., 2022).

    Tools: Promptfoo, PromptLayer.

2. Retrieval Evaluation (For RAG systems)

Focuses on the quality of retrieved documents ("context") using metrics like:

    Context Precision: Are top-k docs relevant?

    Context Relevancy: Are docs necessary and sufficient for answering?

    Context Recall: Does retrieved content cover the ground-truth answer?

Other metrics:

    MAP, nDCG, MRR: General IR metrics (less crucial for RAG).

### B. LLM Model Evaluation

1. Relevance Metrics

Assess if the model’s output is relevant, fluent, and accurate.

    Perplexity, BLEU, ROUGE, Human Evaluation, Diversity

    RAG-specific metrics (from RAGas):

        Faithfulness: Claims supported by context.

        Answer Relevance: Directness and completeness.

        Semantic Similarity: To ground-truth answers.

2. Alignment Metrics

Measures the model's adherence to human values and standards, using dimensions from TRUSTLLM:

    Truthfulness, Safety, Fairness, Robustness, Privacy, Ethics, Transparency, Accountability, Regulation

    Proxy datasets and tasks help assess these dimensions.

3. Task-Specific Metrics

Use benchmarks tailored to the model’s target tasks:

    GLUE/SuperGLUE: General NLP

    SQuAD, Winograd, SWAG: QA and reasoning

    NLI (SNLI, MultiNLI): Inference tasks

    WMT: Machine translation

    MultiWOZ: Dialogue systems

    MBPP: Code generation

    ChartQA: Chart understanding

## Key Takeaway

LLM evaluation is multi-dimensional and must be customized to your applications. This involves evaluating both the pipeline components (e.g., prompts, retrieved context) and the model’s performance (e.g., relevance, alignment, task ability).


## Read or Watch More

1. LLM Evaluation by Klu.ai: [https://klu.ai/glossary/llm-evaluation](https://klu.ai/glossary/llm-evaluation)
2. Microsoft LLM Evaluation Leaderboard: [https://llm-eval.github.io/](https://llm-eval.github.io/)
3. Evaluating and Debugging Generative AI Models Using Weights and Biases course: [https://www.deeplearning.ai/short-courses/evaluating-debugging-generative-ai/](https://www.deeplearning.ai/short-courses/evaluating-debugging-generative-ai/)
4. Hugging Face OpenLLM Leaderboard:  [Hugging Face OpenLLM Leaderboard](https://huggingface.co/spaces/HuggingFaceH4/open_llm_leaderboard)

## Read More (Scientific papers)

1. [https://arxiv.org/abs/2310.19736](https://arxiv.org/abs/2310.19736)
2. [https://arxiv.org/abs/2401.05561](https://arxiv.org/abs/2401.05561)
3. [Automatic Prompt Engineering Zhou et al., (2022)](https://arxiv.org/abs/2211.01910)
4. [TRUSTLLM: Trustworthiness in Large Language Models](https://arxiv.org/pdf/2401.05561.pdf)
5. [Answer semantic similarity](https://docs.ragas.io/en/stable/concepts/metrics/context_precision.html)
6. [Higher BLEU scores signify better performance](https://www.youtube.com/watch?v=M05L1DhFqcw)
7. [Formula and mathematics behind perplexity](https://huggingface.co/docs/transformers/en/perplexity)
8. [Bilingual Evaluation Understudy](https://www.youtube.com/watch?v=M05L1DhFqcw)
9. [Recall Oriented Understudy for Gisting Evaluation](https://www.youtube.com/watch?v=TMshhnrEXlg)
