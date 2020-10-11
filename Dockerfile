# https://hub.docker.com/r/jupyter/datascience-notebook
FROM jupyter/datascience-notebook
ENV JUPYTER_ENABLE_LAB=yes
# JupyterLabに接続する為のコマンドを実行
CMD start-notebook.sh --NotebookApp.token=''
# 親ディレクトリで自動で生成される*-checkpoint.ipynbを全て/home/jovyan/work/.ipynb_chechpoints以下に吐き出すよう変更
RUN sed -i "$ a\c.FileCheckpoints.checkpoint_dir = '/home/jovyan/work/.ipynb_chechpoints'" /home/jovyan/.jupyter/jupyter_notebook_config.py