Spree Variant Properties
========================_

Because Spree::Variant deserve properties too!

This Gem creates the necessary relationships to let Spree::Variant have properties much like Spree::Product.

Use Case
--------

Spree::Product let's you keep a list generic properties, i.e. material. The problem is that we need to keep these properties for Spree::Variant. These properties do not belong on the product for example, we might have a pair of pants where the brown variant comes from factory X and the grey variant comes from factory Y. Another example is that these variants might have different logistics_ids, separate from the variant SKU, that we need to keep track of.

There are multiple ways to solve this, i.e. continue to add columns to Spree::Variant and add new fields and perhaps a critical id belongs here.

This gem instead takes the approach of trying to keep track of some of these variant specific fields as a properties instead.

Installation
------------

Add spree_variant_properties to your Gemfile:

```ruby
gem 'spree_variant_properties'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_variant_properties:install
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_variant_properties/factories'
```

Copyright (c) 2014 [HoyaBoya], released under the New BSD License
