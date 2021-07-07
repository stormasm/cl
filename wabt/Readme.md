
### How to run modified tests

```
clone wabt
gsu
mkdir build
cd build
cmake ..
cmake --build .
```

After the build is completed copy the

  * bin
  * build

directories to /mia/wabt/   
Then modify the script

test/find_exe.py

with this line of code

```
SCRIPT_DIR = '/mia/wabt/'
```

```python
test/run_tests.py
```

```shell
wasmtime add.wat --invoke add 2 3
wat2wasm add.wat
wasm-interp add.wasm -v
```
