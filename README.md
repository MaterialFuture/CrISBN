# Random ISBN Generator in Crystal

[![Language](https://img.shields.io/badge/language-crystal-776791.svg)](https://github.com/crystal-lang/crystal)
![working](https://img.shields.io/badge/stability-working-success.svg)

This will generate a random legal ISBN number. The reason for this would be if you want to get a random book or generate a random book for some project.

The idea is to eventually be able to generate all the different types of ISBNs or other types of codes with different language reference codes. Right now the goal for release is to generate just the english ones.

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
This will be how you can create an ISBN

- I also have a lottery-like variable that is used that could be used elsewhere, right now it's accessed like `RandNum.new.fromZero`.

## Development

- All dev will be done in `src`
- Run using `crystal src/RandomISBN.cr`

- **Recommended:** if you want to use `cake`, which is `make` for crystal then, (this is recommended )
  - Make sure you have cake installed `curl https://raw.githubusercontent.com/axvm/cake/master/install.sh | bash`
  - Run `cake build`
  - Run `./bin/RandomISBN`
- if you want to use `make` run `make build`

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
- Cleanup main file
- Add more language options
- Add support for Amazon's AISN