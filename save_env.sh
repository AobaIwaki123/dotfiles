eval "~/miniconda3/envs/dba/bin/pip freeze > requirements.txt"
eval "~/miniconda3/condabin/conda env export | head -n -1 | grep -v deepbamodel | sed s/python-graphviz/graphviz/ > env_conda.yml"