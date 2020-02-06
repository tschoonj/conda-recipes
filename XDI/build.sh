cd lib
autoreconf -fi
./configure --prefix=$PREFIX
make
make install
cd ../languages/python
$PYTHON -m pip install . --no-deps --ignore-installed -vv
