# ISBN Library in Crystal
[![Language](https://img.shields.io/badge/language-crystal-776791.svg)](https://github.com/crystal-lang/crystal)
![working](https://img.shields.io/badge/stability-working-success.svg)

Crystal library to handle ISBNs. The goal is for this library to handle any action you'd want from an ISBN such as validate, generate new ones, check to see if an ISBN belongs to something and what, and other actions that come to mind.

**Note**: I will be changing this repo in the next coming commits to be a library rather than a random ISBN generator. I want to make something more purposeful than a one-off tool, hoever I want to still keep that generator as a function in the library.

Main Repository is the GitLab one <https://gitlab.com/MaterialFuture/random-isbn>

## Installation
- **Recommended:** if you want to use `cake`, which is `make` for crystal then, (this is recommended )
  - Make sure you have cake installed `curl https://raw.githubusercontent.com/axvm/cake/master/install.sh | bash`
  - Run `cake build`
  - Run `./bin/RandomISBN`
- if you want to use `make` run `make build`

## Usage
Add it to your `shard.yml`:

```crystal
dependencies:
  redis:
    gitlab: MaterialFuture/random-isbn
```

and then install the library into your project:

```bash
$ shards install
```

If you want to use this in your project just reference is with 
```crystal
RandomISBN::English.new
```

I also have a lottery-like variable that is used that could be used elsewhere, right now it's accessed like 
```
RandNum.fromZero
or
RandNum.fromOne
```

You can also validate an ISBN by using like below
```
RandomISBN::English.new(ISBN)
```

For more examples look in `examples/` directory.

## Development
- All dev will be done in `src`
- Run using `crystal src/RandomISBN.cr`

- **Recommended:** if you want to use `cake`, which is `make` for crystal
  - Make sure you have cake installed `curl https://raw.githubusercontent.com/axvm/cake/master/install.sh | bash`
  - Run `cake build`
  - Run `./bin/RandomISBN`
- if you want to use `make` run `make build`

## Spec/Test
Run `crystal spec` to make sure that all the tests pass before developing, and if there's anything that fails let me know or feel free to make a PR or issue.

## Contributing
1. Fork it (<https://gitlab.com/MaterialFuture/random-isbn/-/forks/new>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors
- [Konstantine](https://gitlab.com/materialfuture) - creator and maintainer

## Notes
ISBN number generated from list here: <https://en.wikipedia.org/wiki/International_Standard_Book_Number#ISBN-10_to_ISBN-13_conversion>

#### Todo
- Change this to have more purpose, like an ISBN library so people can create, validate, search, convert to 10 or 13, etc.
- Add more language options
- Add support for Amazon's AISN
- Add Admiral cli and Table cli creation