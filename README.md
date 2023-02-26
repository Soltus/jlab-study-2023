[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/Soltus/jlab-study-2023/HEAD?urlpath=lab) ![GitHub repo size](https://img.shields.io/github/repo-size/Soltus/jlab-study-2023?logo=github&style=flat-square) [![Build Notebook Container](https://github.com/Soltus/jlab-study-2023/actions/workflows/binder.yaml/badge.svg)](https://github.com/Soltus/jlab-study-2023/actions/workflows/binder.yaml) [![Docker](https://img.shields.io/badge/Docker-585899?logo=docker&style=flat-square)](https://hub.docker.com/repository/docker/soltus/jlab-study-2023) ![Docker Pulls](https://img.shields.io/docker/pulls/soltus/jlab-study-2023?style=flat-square) ![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/soltus/jlab-study-2023?style=flat-square)

# 简介

此仓库托管在 [Github](https://github.com/Soltus/jlab-study-2023) ，是一八六战略二期工程项目，绛亽新学习融创示范项目

项目可交互体验依托 [Binder](https://mybinder.org/v2/gh/Soltus/jlab-study-2023/HEAD?urlpath=lab/tree/binder.ipynb) 实现

其开源贡献包括两大方面：

1. 提供一个开箱即用的 Jupyter Lab 环境（Windows AMD64)，包括基础环境与扩展环境
2. 丰富 Python 编程学习资料

# 复苏

> 如果需要镜像加速下载，请参考 [Python镜像 (yuque.com)](https://www.yuque.com/cnbc/py3/image)
>
> 只考虑 windows AMD64 平台

前置准备：

1. `conda info -e` 命令应对输出而不是报错

在 README.md 文件所在路径打开终端，运行以下命令：(应当使用 PowerShell 而不是 CMD 以避免意外发生)

```powershell
conda create -n lab python=3.10
conda actiavte lab
```

```powershell
pip install pip-tools -i https://mirrors.tencent.com/pypi/simple
```

```powershell
pip-sync win.requirements.txt --pip-args "--quiet --retries 10 --timeout 30"
```

```powershell
jupyter lab --port='6969' --ip='*' --no-browser --allow-root --notebook-dir='D:\\TEMP\\jlab\\notebook'
```

--notebook-dir 传参因人而异，不出意外的话复苏成功。在终端 CTRL + 单击链接或者手动打开浏览器访问 [http://127.0.0.1:6969/lab](http://127.0.0.1:6969/lab) ，时间交给你了

# 初始化工作

参考 [index.ipynb](https://github.com/Soltus/jlab-study-2023/blob/main/index.ipynb)
