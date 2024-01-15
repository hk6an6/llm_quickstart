Exercises from a quickstart to large language models. There are 2 sections in this doc. First, prerequisites configure your development environment. Then, the capters has a link to a folder with with the relevant code for each chapter.

## Pre requisites
Before you begin, install Xcode command line tools on your MAC:
* Get Xcode: https://developer.apple.com/xcode/
* Install command line tools: https://mac.install.guide/commandlinetools/4.html 

After confirming you have xcode command line tools, get Conda:

1. Setup Conda with miniforge https://github.com/conda-forge/miniforge#unix-like-platforms-mac-os--linux
2. Create a Conda environment:
```
mkdir llm_quickstart
conda create -p ./env  
# activate the environment:
conda activate ./env
conda install pytorch-nightly::pytorch torchvision torchaudio -c pytorch-nightly
conda install matplotlib
conda install ipykernel
conda env config vars set PYTORCH_ENABLE_MPS_FALLBACK=1
```
If you made it this far, you have a working environment. Well done! From this point forward, you can use `conda activate ./env` whenever you are in the ‘llm_quickstart’ folder.

And if you don't yet have a code editor, like VSCode. You can use Jupyter notebooks within VSCode: https://code.visualstudio.com/docs/datascience/jupyter-notebooks

Finally, install hugging face:
```
conda install -c huggingface transformers
conda install sentence-transformers
```

Wrap up by creating a kernel for your jupyter notebooks: `python -m ipykernel install --user --name=pytorch211`.


## Chapters

* [Chapter 2 - semantic search](./semantic_search_with_llms/README.md)
* [Chapter 3 - fine tuning](./fine-tuning/fine_tune.ipynb)
* [Chapter 4 - beginner prompting](./first_steps_prompt_engineering/chat_gpt_qa_bot.ipynb)
* [Chapter 5 - adv prompting](./advanced_prompt_engineering/prompt_chain.ipynb)
* [Chapter 6 - recommendation engine](./recommendation_engine/recommendation_engine.ipynb)

