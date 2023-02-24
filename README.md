[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/Soltus/jlab-study-2023/main)

项目托管在 [Github](https://github.com/Soltus/jlab-study-2023)

交互体验在 [Binder](https://mybinder.org/v2/gh/Soltus/jlab-study-2023/main)（额外提供界面简洁的 [React Interface in Binder](https://mybinder.org/v2/gh/Soltus/jlab-study-2023/main?urlpath=nteract) ，你觉得 Jupyter Lab 的界面过于复杂可以一试，代价是许多功能将不可用）

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
