# [Part 6] LLM Evaluation Techniques

## TL;DR

Next up is a short dive in evaluation techniques applied to LLMs, focusing on two key areas: pipeline evaluation and model evaluation.

The role of task-specific benchmarks like GLUE and SQuAD will also be touched, assessing LLM performance across diverse real-world applications.

## Evaluating Large Language Models Overview

LLM evaluation involves assessing the entire pipeline, including the model, prompts, and retrieval (if using RAG). Evaluation is split into two main dimensions:

### A. LLM Pipeline Evaluation

1. Prompt Evaluation

    It goes without saying that prompt quality inputs greatly impact model output quality.

    Evaluation involves:

        Prompt registry/playground for testing.

        Manual or automatic methods (see Automatic Prompt Engineer or APE from Zhou et al., 2022 below in Read More section).

    Tools: Promptfoo, PromptLayer.

2. Retrieval Evaluation (For RAG systems)

Focuses on the quality of retrieved documents ("context") using metrics like:

    Context Precision: Are top-k docs relevant? The higher the context precision score, the better.

    Context Relevancy: Are docs necessary and sufficient for answering? Higher scores, the better.

    Context Recall: Does retrieved content align enough with ground-truth answers? Higher scores, the better.

Other metrics:

    MAP (Mean Average Precision), nDCG (Normalized Discounted Cumulative Gain), RR/MRR (Reciprocal Rank and Mean): General retrieval metrics used to evaluate quality of retrieed documents or text.

### B. LLM Model Evaluation

1. Relevance Metrics

Assess if the model’s output is relevant, fluent, and accurate.

    Perplexity, BLEU, ROUGE, Human Evaluation, Diversity 

        Perplexity: Lower perplexity scores indicate better performance; measures how well models predict text.

        BLEU: compares generated output with reference answers.

        ROUGE: like BLEU, calculates similarity and uses precision, recall and F1 scores.

        Diversity: Measures variety and uniqueness of generated responses, using metrics like n-gram and semantic similarity.

    RAG-specific metrics (from RAGas):

        Faithfulness: Claims supported by context.

        Answer Relevance: Answers are deemed relevant when they directly and appropriately address the original questions.

        Semantic Similarity: Assessment of the semantic resemblance between the generated answer and the ground truth

2. Alignment Metrics

Measures the model's adherence to human values and standards, using dimensions from TRUSTLLM:

    Truthfulness, Safety, Fairness, Robustness, Privacy, Ethics, Transparency, Accountability, Regulations.

    Proxy datasets and tasks help assess these dimensions.

    Safety, Ethics, and compliance with Regulations cannot be overemphasized enough. The ability of models to comply with HIPAA in healthcare settings for example or GDPR in the EU. 

3. Task-Specific Metrics

Use benchmarks tailored to the model’s target tasks:

    GLUE/SuperGLUE: General Language Understanding Evaluation - a collection of nine tasks to measure a model's ability to understand English text. SuperGLUE is an extension that includes more texts like word sense disambiguation, and reasoning

    SQuAD, Winograd, SWAG: Stanford Question Answering Dataset is a benchmark on reading comprehension. Winograd tests common sense reasoning. Situations With Adversarial Generation evaluates model's ability to predict based likely ending to sentences. Win

    NLI, SNLI, MultiNLI:  Benchmarks that test prediction ability using hypothesis testing techniques such as entailment, contradictions or undermining.

    WMT: Workshop on Macine Translation is an annual competition with datasets for evaluating translation quality across various languages.

    MultiWOZ: task-oriented benchmark datasets for evaluating dialogue such as those for used for finding restaurants or booking flights and hotels.

    MBPP: Datasets for code generation crowdsourced Python programming problems.

    ChartQA: for chart summarizing.

## Key Takeaways

LLM evaluation is multi-dimensional and must be customized to your applications. This involves evaluating both the pipeline components (e.g., prompts, retrieved context) and the model’s performance (e.g., relevance, alignment, task ability). Depending on the scale and/or operational cost concernts, evaluations and annotations can either be accomplished manually or automatically.


## Read or Watch More

1. LLM Evaluation by Klu.ai: [https://klu.ai/glossary/llm-evaluation](https://klu.ai/glossary/llm-evaluation)
2. Microsoft LLM Evaluation Leaderboard: [https://llm-eval.github.io/](https://llm-eval.github.io/)
3. Evaluating and Debugging Generative AI Models Using Weights and Biases course: [https://www.deeplearning.ai/short-courses/evaluating-debugging-generative-ai/](https://www.deeplearning.ai/short-courses/evaluating-debugging-generative-ai/)
4. Hugging Face OpenLLM Leaderboard:  [Hugging Face OpenLLM Leaderboard](https://huggingface.co/spaces/HuggingFaceH4/open_llm_leaderboard)

## Read More (Scientific papers)

1. [Evaluating Large Language Models: A Comprehensive Survey](https://arxiv.org/abs/2310.19736)
2. [Awesome-LLMs-Evaluation-Papers](https://arxiv.org/abs/2401.05561)
3. [Automatic Prompt Engineering Zhou et al., (2022)](https://github.com/tjunlp-lab/Awesome-LLMs-Evaluation-Papers)
4. [TRUSTLLM: Trustworthiness in Large Language Models](https://arxiv.org/pdf/2401.05561.pdf)
5. [Answer semantic similarity](https://docs.ragas.io/en/stable/concepts/metrics/context_precision.html)
6. [Higher BLEU scores signify better performance](https://www.youtube.com/watch?v=M05L1DhFqcw)
7. [Formula and mathematics behind perplexity](https://huggingface.co/docs/transformers/en/perplexity)
8. [Bilingual Evaluation Understudy](https://www.youtube.com/watch?v=M05L1DhFqcw)
9. [Recall Oriented Understudy for Gisting Evaluation](https://www.youtube.com/watch?v=TMshhnrEXlg)
