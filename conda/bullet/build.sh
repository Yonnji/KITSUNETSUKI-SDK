#!/bin/sh


mkdir -p bld
cd bld
cmake \
    -DBUILD_BULLET2_DEMOS=OFF \
    -DBUILD_CPU_DEMOS=OFF \
    -DBUILD_EGL=OFF \
    -DBUILD_EXTRAS=ON \
    -DBUILD_MULTITHREADING=ON \
    -DBUILD_OPENGL3_DEMOS=OFF \
    -DBUILD_PYBULLET=OFF \
    -DBUILD_PYBULLET_NUMPY=OFF \
    -DBUILD_SHARED_LIBS=OFF \
    -DBUILD_UNIT_TESTS=OFF \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_CXX_FLAGS=-fPIC \
    -DCMAKE_INSTALL_PREFIX=${PREFIX} \
    -DINSTALL_LIBS=ON \
    -DUSE_DOUBLE_PRECISION=OFF \
    -DUSE_GLUT=OFF \
    -DUSE_GRAPHICAL_BENCHMARK=OFF \
    ..

make
make install

cd ..
