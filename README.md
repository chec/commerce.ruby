# Commerce.ruby by Chec

Ruby client library for Commerce.js by Chec

You can learn more about Commerce.js & Chec at https://commercejs.com.

## Requirements
Ruby 2.0 or above.

## Install

You can install this gem from Rubygems.org (https://rubygems.org/gems/commerce)

```bash
gem install commerce
```

Alternatively, you can download this source and build the gem

```ruby
gem build commerce.gemspec
```


## Getting Started

Simple usage looks like:

```ruby
require 'commerce'

Commerce.Auth('sk_test_8146250gNZ8gddde480e07ac91c10c2651077176aed27')

products = Commerce.Product.all()

```

## Documentation

Please see https://commercejs.com/docs/api 
