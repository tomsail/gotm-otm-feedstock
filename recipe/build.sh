
git clone --recursive https://github.com/gotm-model/code.git
cd code
git checkout $VERSION
git submodule update --init --recursive

mkdir build
cd build
cmake .. -DGOTM_USE_NetCDF:BOOL=OFF -DGOTM_USE_FABM=off  -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX
make
make install