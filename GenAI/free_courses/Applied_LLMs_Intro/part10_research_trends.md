# [Part 10] Emerging Research Trends

## TL;DR

MM-LLMs or MultiModal Large Language Models, Open Source Models and Agents are rapidly becoming popular and advancing at a rapid pace. 

Domain specific models such as those in the domains of Finance, Healthcare, or Media enrich models through Mixture of Experts and RWKV or Recurrent Weighted Key-Value.

## Multimodal LLMs (MM-LLMs)

MM-LLMs combine text with other data modalities (e.g., images, audio, video, 3D) to enhance reasoning and task versatility. Recent advances stem from improved LLMs and efficient training techniques.

### Architecture (5 Components):

    Modality Encoder: Encodes non-text inputs using pre-trained models (e.g., ViT, Whisper, ImageBind).

    Input Projector: Maps encoded modality features into the text space using MLPs or cross-attention.

    LLM Backbone: Core reasoning engine with capabilities like zero-shot, CoT, and instruction following.

    Output Projector: Converts internal representations into formats suitable for multimodal generation.

    Modality Generator: Uses models like Latent Diffusion for generating output in modalities like image or audio.

### Training Stages:

    Pre-training (MM PT): Aligns multimodal content (e.g., linking images with text).

    Instruction Tuning (MM IT): Improves task performance via:

        Supervised Fine-Tuning (SFT) and

        Reinforcement Learning from Human Feedback (RLHF).

### Emerging Directions

    More powerful and diverse modality support

    Unified, realistic multimodal benchmarks

    Lightweight/mobile deployments

    Embodied agents for real-world autonomy (e.g., PaLM-E)

    Continual learning without catastrophic forgetting

## Open-Source LLMs

Open-source LLMs promote transparency, reproducibility, and community-driven innovation.

**Key Models**

    LLaMA (Meta): High performance with fewer parameters; LLaMA 2 and Chat variants improve on context and specialization.

    Mistral: Mistral 7B and Mixtral 8x7B (SMoE model) excel in benchmarks.

    OLMo (AI2): End-to-end open ecosystem with data (Dolma), models, code, and evaluations.

    LLM360: Fully open with checkpoints, data, and training results; includes models like AMBER and CRYSTALCODER.

Note: Unlike LLaMA or Mistral (model-only releases), OLMo and LLM360 provide full reproducibility.

### LLM Agents

LLM agents integrate LLMs with planning, memory, and tool use to perform autonomous, complex tasks.
Capabilities:

    Autonomy & Adaptability: Can plan, execute, and adapt tasks with minimal input.

    Task Execution: Research, drafting, planning, stakeholder communication.

    Advanced Reasoning: Handle structured workflows using chain-of-thought and tool use.

### Architecture (from survey):

    Profiling Module: Defines agent identity and role.

    Memory Module: Stores and recalls task-relevant knowledge.

    Planning Module: Breaks down tasks using strategies like CoT or feedback loops.

    Action Module: Executes plans and generates real-world outputs.

Use Case Example: Organizing a global sustainability conference — the agent handles research, logistics, stakeholder comms, and Q&A planning autonomously.

### Future Research Directions

    Multi-Modal Agents: Expanding LLM agents beyond text to handle images, audio, and video adds complexity in processing and interpreting diverse data types.

    Hallucination Mitigation: Preventing the spread of factually incorrect outputs (hallucinations) in multi-agent systems is critical to avoid cascading misinformation.

    Scalable Interactive Learning: Developing reliable environments for agents to learn interactively and collaboratively, beyond individual fine-tuning, remains a challenge.

    Multi-Agent Coordination: Scaling multi-agent systems requires efficient methods for coordinating communication and workflows amid high computational demands.

    Comprehensive Benchmarks: Better benchmarks are needed to evaluate emergent behaviors and agent capabilities across diverse domains like science, economics, and healthcare.

## Domain-Specific LLMs

    Why domain-specific? General LLMs lack deep expertise and efficiency for specialized tasks; domain-specific LLMs, trained on field-specific data, provide greater accuracy, understanding, and regulatory compliance.

    Benefits: Improved task performance, reduced irrelevant outputs, cost efficiency, and better alignment with professional language and ethical standards.

    Examples:

        Clinical/Biomedical/Health: BioBERT, Hi-BEHRT

        Finance: BloombergGPT, FinGPT

        Code: WizardCoder, CodeT5

### Future Trends for Domain-Specific LLMs

    Expansion to multi-modal data (text, images, audio) for richer interaction.

    Real-time interactive learning for continuous knowledge updating.

    Integration with other AI systems (e.g., decision-making models) for comprehensive solutions.

    Emphasis on ethics, fairness, and transparency, especially in sensitive domains like healthcare and finance.

These directions highlight the evolution of LLMs towards more specialized, interactive, and ethically aligned AI systems that can operate across modalities and collaborate effectively in complex environments.

### New LLM Architectures Summary

1. **Mixture of Experts (MoEs)**

    What it is: An architecture where transformer feed-forward layers are replaced by sparse expert networks. Only a few experts are active per input, guided by a routing mechanism.

    Key Advantages:

        Efficient pretraining with less compute.

        Faster inference by activating only part of the model.

    Challenges:

        Difficulties with generalization during fine-tuning.

        High memory usage, as all parameters must be loaded.

    Example: Mixtral 8x7B uses shared and expert-specific parameters for efficiency.

2. **Mamba Models**

    What it is: A linear-time recurrent architecture using Selective State Spaces to process very long sequences (up to 1M tokens).

    Key Innovations:

        Combines the speed of state space models with selective gating for relevant data.

    Advantages:

        Scales linearly with sequence length—faster than Transformers.

        Suitable for tasks beyond NLP, like audio, genomics, and time series.

3. **RWKV or Recurrent Weighted Key-Value**

    What it is: A hybrid of RNNs and Transformers designed to handle long sequences efficiently. They are stateful and trained like Transformers.

    Key Features:

        Linear-time scaling with long contexts (thousands of tokens).

        Parallelized training similar to Transformers.

        Smaller memory footprint with performance comparable to GPT models.

    Applications: Well-suited for NLP and multi-modal tasks; integrated into Hugging Face Transformers.

These architectures reflect ongoing innovations aimed at improving efficiency, scalability, and performance in large language models, especially for long-sequence processing.

## Read or Watch More

1. [LLM Agents via Prompting guide](https://www.promptingguide.ai/research/llm-agents)
2. [LLM Powered Autonomous Agents](https://lilianweng.github.io/posts/2023-06-23-agent/)
3. [Emerging Trends in LLM Architecture](https://medium.com/@bijit211987/emerging-trends-in-llm-architecture-a8897d9d987b)
4. [Four LLM trends since ChatGPT and their implications for AI builders](https://towardsdatascience.com/four-llm-trends-since-chatgpt-and-their-implications-for-ai-builders-a140329fc0d2)

## Read More (Scientific papers)

1. [https://arxiv.org/abs/2401.13601](https://arxiv.org/abs/2401.13601)
2. [https://arxiv.org/abs/2312.00752](https://arxiv.org/abs/2312.00752)
3. [https://arxiv.org/abs/2310.14724](https://arxiv.org/abs/2310.14724)
4. [https://arxiv.org/abs/2307.06435](https://arxiv.org/abs/2307.06435)
