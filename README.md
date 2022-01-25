# Zig by Example

Content and build toolchain for [Zig by Example](https://zigbyexample.com), a site that teaches Zig via annotated example programs.

## Overview

The Zig by Example site is built by extracting code and comments from source files in `examples` and rendering them via the `templates` into a static `public` directory. The programs implementing this build process are in `tools`, along with dependencies specified in the `go.mod`file.

The built `public` directory can be served by any static content system.

## Building

[![Build Status](https://github.com/ibokuri/zigbyexample/actions/workflows/test.yml/badge.svg?branch=master)](https://github.com/ibokuri/zigbyexample/actions)

To build the site you'll need Go installed. Run:

```console
$ tools/build
```

To build continuously in a loop:

```console
$ tools/build-loop
```

To see the site locally:

```
$ tools/serve
```

and open `http://127.0.0.1:8000/` in your browser.

## Publishing

To upload the site:

```console
$ export AWS_ACCESS_KEY_ID=...
$ export AWS_SECRET_ACCESS_KEY=...
$ tools/upload
```

## License

This work is a derivative of "Go by Example" by [Mark McGranaghan](https://markmcgranaghan.com), used under [CC BY](https://creativecommons.org/licenses/by/3.0/).

This work is licensed under [CC BY](https://creativecommons.org/licenses/by/3.0/) by Jason Phan.
