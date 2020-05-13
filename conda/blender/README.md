![logo](blender_icon_128x128.png)

Blender as Python module
========================

https://docs.blender.org/api/2.79b/


Building conda package
----------------------

```
git clone https://github.com/Yonnji/KITSUNETSUKI-SDK.git
cd conda/blender
conda build .
conda install python-blender --use-local
```


Installing prebuild conda package
---------------------------------

```
conda config --add channels kitsune.one
conda install python-blender
```
