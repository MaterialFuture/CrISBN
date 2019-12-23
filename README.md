# Random ISBN Generator in Crystal

[![Language](https://img.shields.io/badge/language-crystal-776791.svg)](https://github.com/crystal-lang/crystal)
![stability-wip](https://img.shields.io/badge/stability-work_in_progress-lightgrey.svg)
![(https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md#pull-requests)

**Please Note**: This project is a Work In Progress, this shouldn't be used in any production environment. When this project is ready to use I'll make sure to change the badge above to show that it's stable.

This will generate a random legal ISBN number. The reason for this would be if you want to get a random book or generate a random book for some project.

The idea is to eventually be able to generate all the different types of ISBNs or other types of codes with different language reference codes. Right now the goal for release is to generate just the english ones.

## Installation

**Please Note**: The below isn't ready, once a working release is published then this will be valid, but for those who know this can still use it in their projet if they know what they're doing.

Add it to your `shard.yml`:

```crystal
dependencies:
  redis:
    gitlab: random-isbn
```

and then install the library into your project:

```bash
$ shards install
```


## Usage

If you want to use this in your project just reference is with 
- `RandomISBN::New` This will be how you can create 
- `RandomISBN::New.english` To generate a random english ISBN
- In the future perhaps something like `RandomISBN::English.new` would be a better way of going about it. I'm still looking into the best way to structure this.

## Development

- All dev will be done in `src`
- Run using `crystal src/RandomISBN.cr`

- if you want to use `make` run `make build`
- **Recommended:** if you want to use `cake`, which is `make` for crystal then, (this is recommended )
  - Make sure you have cake installed `curl https://raw.githubusercontent.com/axvm/cake/master/install.sh | bash`
  - Run `cake build`
  - Run `./bin/RandomISBN`

## Contributing

1. Fork it (<https://gitlab.com/MaterialFuture/random-isbn/-/forks/new>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Konstantine](https://gitlab.com/materialfuture) - creator and maintainer
