# [Part 9] Challenges with LLMs

## TL;DR

Practitioners have identified two main areas of concern with LLMs: behavioral challenges and deployment challenges. 

- Behavioral challenges include issues like hallucination, where LLMs generate fictitious information, and adversarial attacks, where inputs are crafted to manipulate model behavior. 

- Deployment challenges encompass memory and scalability issues, as well as security and privacy concerns. 

## A. Behavioral Challenges

### 1. Hallucinations

LLM hallucinations as of 2025H2 remain a problem. In today's sensitive 'fake news' era, hallucinations in applications that require high factual accuracy, can erode trust. 

LLMs that generate incorrect content for applications in the fields of public news, education, or medicine can lead to dangerous misinformation, harm children or create deadly medical advice.

### 2. Adversarial Attacks

LLMs can be vulnerable to adversarial attacks, where inputs are specially crafted to trick the model into making errors or revealing sensitive information. These attacks can compromise the integrity and reliability of LLM applications, posing significant security risks.

### 3. Alignment

Ensuring LLMs align with human values and intentions is a complex task. Misalignment can result from the model pursuing objectives that don't fully encapsulate the user's goals or ethical standards. Misalignment can lead to undesirable outcomes, such as generating content that is offensive, biased, or ethically questionable.

### 4. Prompt Brittleness

LLMs can be overly sensitive to the exact wording of prompts, leading to inconsistent or unpredictable outputs. Small changes in prompt structure can yield vastly different responses. This brittleness complicates the development of reliable applications and requires users to have a deep understanding of how to effectively interact with LLMs.

## B. Deployment Challenges

### 1. Memory and Scalability Challenges

 Deploying LLMs at scale involves significant memory and computational resource demands. Managing these resources efficiently while maintaining high performance and low latency is a technical hurdle. Scalability challenges can limit the ability of LLMs to be integrated into real-time or resource-constrained applications, affecting their accessibility and utility.

### 2. Security & Privacy

Protecting the data used by and generated from LLMs is critical, especially when dealing with personal or sensitive information. LLMs need robust security measures to prevent unauthorized access and ensure privacy. Without adequate security and privacy protections, there is a risk of data breaches, unauthorized data usage, and loss of user trust.

## Outline Summary of Challenges

### A1. Hallucinations

Definition: Hallucination is when an LLM generates false or fabricated information that seems plausible. This is especially problematic in RAG systems where unverifiable content may appear grounded.

Causes:

    Biased or incorrect training data

    Outdated information

    Lack of true understanding

    Overgeneralization of patterns

Detection & Mitigation:

    SelfCheckGPT: Detects hallucinations by generating multiple outputs and measuring consistency using metrics like BERTScore. No mitigation provided.

    Self-Contradiction Framework: Detects logical inconsistencies within outputs and mitigates by editing text to resolve contradictions.

### A2. Adversarial Attacks

Definition: Attacks designed to manipulate LLMs into unintended behaviors.

Types:

    Prompt Injection, Jailbreaking

    Data Poisoning, Model Inversion

    Backdoor Attacks, Membership Inference

Mitigation Techniques:

    SmoothLLM: Uses character-level perturbations and aggregates outputs to defend against jailbreaks.

    Perplexity Filters: Detect adversarial prompts by identifying high-perplexity inputs.

    Taxonomy by Greshake et al.: Offers a structured overview of attack vectors.

### A3. Alignment

Definition: Ensuring LLMs behave in accordance with human goals, ethics, and expectations.

Misalignment Risks:

    Harmful, offensive, or biased content

    Misinterpretation of instructions

Strategies:

    Define task-specific alignment dimensions

    Evaluate using dedicated benchmarks

    Apply Supervised Fine-Tuning (SFT)

    Leverage papers like Zhou et al. 2023 for aligned LLMs and benchmarks

### A4. Prompt Brittleness

Definition: LLM outputs vary drastically with minor prompt changes, reducing reliability.

Mitigation Strategies:

    Standardize prompt formats

    Robust engineering and testing

    Human-in-the-loop validation

    Adaptive prompting

    Continuous monitoring and feedback

### B1. Memory & Scalability Challenges

1. Fine-Tuning Overhead:

    Full fine-tuning is memory-intensive.

    Solutions: PEFT methods like adapters, prompt-tuning, and RAG.

2. Inference Latency:

    Caused by sequential token processing and memory needs.

    Solutions: Efficient attention (FlashAttention, Multi-query), quantization, and pruning.

3. Limited Context Length:

    LLMs struggle with long sequences.

    Solutions: Long-context attention mechanisms (Luna, ALiBi), dilated attention, and generalization methods.

### B2. Privacy Risks

1. Gradient Leakage Attacks:

    Exploit gradients to extract sensitive info.

    Defenses: Differential privacy, noise injection, homomorphic encryption.

2. Membership Inference Attacks (MIA):

    Determine if a sample was in the training set.

    Defenses: Dropout, DP, regularization (label smoothing).

3. PII Exposure:

    Leakage of identifiable data (e.g., SSNs, names).

    Mitigation:

        Preprocessing (deduplication, PII filtering)

        PII scrubbing (NER-based)

        Privacy-preserving training (DP-SGD)

        Careful curation of fine-tuning datasets


## Read or Watch More

1. [The Unspoken Challenges of Large Language Models](https://deeperinsights.com/ai-blog/the-unspoken-challenges-of-large-language-models)
2. [15 Challenges With Large Language Models (LLMs)](https://www.predinfer.com/blog/15-challenges-with-large-language-models-llms/)
3. [Privacy-Preserving Training Algorithms:Techniques like differentially private stochastic gradient descent](https://assets.amazon.science/01/6e/4f6c2b1046d4b9b8651166bbcd93/differentially-private-decoding-in-large-language-models.pdf#:~:text=While%20the%20intersection%20of%20DP%20and%20LLMs%20is%20fairly%20novel%2C%20the%20prominent%20approach&text=vate%20Stochastic%20Gradient%20Descent%20(DP%2DSGD)%20(Song%20et%20al.%2C%202013;))


## Read More (Scientific papers)

1. [https://arxiv.org/abs/2307.10169](https://arxiv.org/abs/2307.10169)
2. [https://www.techrxiv.org/doi/full/10.36227/techrxiv.23589741.v1](https://www.techrxiv.org/doi/full/10.36227/techrxiv.23589741.v1)
3. [https://arxiv.org/abs/2311.05656](https://arxiv.org/abs/2311.05656)
4. [Key privacy risks and attacks](https://arxiv.org/pdf/2402.00888.pdf)
5. [Limiting Context Length using Luna efficient attention mechanisms](https://arxiv.org/abs/2106.01540)
6. [Limiting Context Length using Dilated Attention](https://arxiv.org/abs/2209.15001)
7. [Using Positional Embedding Schemes](https://arxiv.org/abs/2108.12409)
8. [Multi-query attention to Reduce Inference Latency](https://blog.fireworks.ai/multi-query-attention-is-all-you-need-db072e758055)
9.  [Using FlashAttention to Limit Memory Bandwidth Usage](https://arxiv.org/abs/2205.14135)
10. [Quantization](https://www.tensorops.ai/post/what-are-quantized-llms) and [Pruning](https://medium.com/@bnjmn_marie/freeze-and-prune-to-fine-tune-your-llm-with-apt-dc750b7bfbae) techniques reduce memory footprint and computational complexity without sacrificing performance.
11. [Precise prompting](https://arxiv.org/pdf/2307.10169.pdf)
12. [Popular LLM Alignment techniques and Benchmarks](https://arxiv.org/pdf/2307.12966.pdf) and [What Alignment Is](https://arxiv.org/pdf/2308.05374.pdf)
13. [Using Perplexity Filters Against Adversarial Attacks](https://arxiv.org/pdf/2309.00614v2.pdf)
14. [SelfCheckGPT vs hallucinations](https://arxiv.org/pdf/2303.08896.pdf)
15. [Taxonomy of Adversarial atacks](https://arxiv.org/abs/2302.12173)
16. [SmoothLLM](https://arxiv.org/pdf/2310.03684.pdf) perturbs multiple copies of a given input prompt at the character level and then consolidating the resulting predictions to identify adversarial inputs. 
