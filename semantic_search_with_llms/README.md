A tool for semantic search.

# Installation

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
If you made it this far, you have a working environment. Well done! From this point forward, you can use `condo activate ./env` whenever you are in the ‘llm_quickstart’ folder.

And if you don't yet have a code editor, like VSCode. You can use Jupyter notebooks within VSCode: https://code.visualstudio.com/docs/datascience/jupyter-notebooks

Finally, install hugging face:
```
conda install -c huggingface transformers
conda install sentence-transformers
```

Wrap up by creating a kernel for your jupyter notebooks: `python -m ipykernel install --user --name=pytorch211`.

## Create a database for your embeddings
1. [Get docker](https://docs.docker.com/desktop/install/mac-install/).
1. Run `docker build -t my_pgvector:latest`
1. Run `docker run --name my_pgvector -e POSTGRES_PASSWORD=123456 -d my_pgvector`
1. Run `docker exec -it my_pgvector bash`
1. Run `psql -h localhost -U postgres-a -f ./make_db.sql`

You can stop your container with `docker container stop my_pgvector`