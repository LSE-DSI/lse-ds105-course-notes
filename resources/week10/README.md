**Week 10 content**

To replicate the material in this folder, follow the steps below:

1. Ensure you have `conda` installed
2. `cd` to this directory
3. Create a conda environment and call it `venv`

```console
conda create -y --prefix venv python=3.10
```

4. Activate the environment and make sure you have `pip` installed inside that environment:

```console
conda activate ./venv # this might vary depending on your OS
conda install pip -y
```

5. Install required libraries

```console
pip install -r requirements.txt
```

6. Run `jupyter lab .` here