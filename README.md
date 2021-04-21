# Usage
Enhance VIM with some helpful plugins.

# Prerequisites
* [npm](https://www.npmjs.com/)

## Building VIM from source (on OSX)

Clone the vim repo then:

```bash
# Cleanup cached python paths
rm -f src/auto/config.cache

# Explicitly set python interpreter
./configure --prefix=/usr/local --with-features=huge --enable-python3interp --enable-cscope \
  --with-python3-config-dir=/opt/local/Library/Frameworks/Python.framework/Versions/3.8/lib/python3.8/config-3.8-darwin/

# Build vim
make

# Install to /usr/local/bin
sudo make install
```

