if "$PY3K" = "1" ; then
export PYFLAGS=$(python3-config --includes --ldflags)
else
export PYFLAGS=$(python2-config --includes --ldflags)
fi
make
cp env/work/srw_python/srwlpy*.so $SP_DIR/
cp env/work/srw_python/srw*.py $SP_DIR/
cp env/work/srw_python/uti*.py $SP_DIR/
