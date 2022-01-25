# Zig by Example

Content and build toolchain for [Zig by Example](https://zigbyexample.com).

## Building

To build the site you'll need Go installed. Run:

```sh
tools/build
```

To build continuously in a loop:

```sh
tools/build-loop
```

To see the site locally:

```sh
tools/serve
```

and open `http://127.0.0.1:8000/` in your browser.

## Publishing

To upload the site:

```sh
export AWS_ACCESS_KEY_ID=...
export AWS_SECRET_ACCESS_KEY=...
tools/upload
```

## License

This work is a derivative of "Go by Example" by [Mark McGranaghan](https://markmcgranaghan.com), used under [CC BY](https://creativecommons.org/licenses/by/3.0/).

This work is licensed under [CC BY](https://creativecommons.org/licenses/by/3.0/) by Jason Phan.
