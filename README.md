# Cerberus

A modular Crystal authentication solution inspired by [Devise](https://github.com/plataformatec/devise).

It is meant for use in [Amber](https://github.com/amberframework/amber) app, currently only using Granite.

## Installation

1. Add the dependency to your `shard.yml`:
```yaml
dependencies:
  cerberus:
    github: ilanusse/cerberus
```
2. Run `shards install`

## Usage

```crystal
require "cerberus"
```

TODO: Write usage instructions here

## Roadmap
- [ ] Implement `:database_authenticatable`
- [ ] Implement `:validatable`
- [ ] Implement generator based on Amber's Granite auth generator
- [ ] Implement `:recoverable`
- [ ] Implement `:confirmable`
- [ ] Implement `:lockable`
- [ ] Implement `:timeoutable`

## Contributing

1. Fork it (<https://github.com/ilanusse/cerberus/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [ilanusse](https://github.com/ilanusse) - creator and maintainer

## Thanks
- [The Amber Team](https://github.com/amberframework/amber) for an awesome framework to play with 
- @drujensen for [an example](https://github.com/drujensen/amber-auth-example) this was based on
- Plataformatec for [Devise](https://github.com/plataformatec/devise)
