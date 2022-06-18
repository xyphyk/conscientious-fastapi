# 🔬 conscientious 🔍
Python template for a project with a reproducible python environment

## Features
- Automatic conda setup with any python version ⚒
- Automatic pre-commit saving of conda packages for a reproducible env 📦
- **TODO:** Automatic pre-commit checking of python typings 🔬
- **TODO:** Automatic containerisation of python project for hosting on cloud providers 🚢

## Folder Structure

    .
    ├── src/
    │   └── main.py             # Project entry point 🧰
    ├── scripts/
    │   ├── setup.sh            # Sets up the conda env and pre-commit hooks 🎣
    │   └── run.sh              # Runs the project. Similar to 'python src/main.py' ▶️
    ├── .env                    # Project specific environment variables 📃
    ├── conscientious.cfg       # Configuration of python version and conda environment name ⚙
    └── ...
    
## Getting Started
Copy this template using GitHub's "**Import Repository**", then supply this repository as "**Your old repository's clone URL**"

Once cloned, configure `conscientious.cfg`:
```bash
CONDA_ENV=<DESIRED_CONDA_ENV_NAME>          # e.g. repo_name-env
PYTHON_VERSION=<DESIRED_PYTHON_VERSION>     # e.g. 3.9
```

then run:
```bash
bash scripts/setup.sh
```

Start editing `main.py`!
