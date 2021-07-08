
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

### Start over again...

Now that the files are in the proper spot lets start over again... Only this time you do not have to build anything.  Simply

```
clone wabt
gsu
```

At this point you have the binary files you need in the proper
place and from here on out the tests should run based on modifying the script:

 * test/find_exe.py

with this line of code

```
SCRIPT_DIR = '/mia/wabt/'
```

In the test directory **rm -fr**

```
wasm2c [this is the only one that is mandatory]
binary
parse
roundtrip
spec
typecheck
```

And now all the tests should run out of the box with

```python
test/run_tests.py
```

#### Notes about other stuff besides building and running tests

```shell
wasmtime add.wat --invoke add 2 3
wat2wasm add.wat
wasm-interp add.wasm -v
```
