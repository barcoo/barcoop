# Barcoop

Barcoo's shared RuboCop configuration and cops.

### Installation

Add this line to your application's `Gemfile`:

```ruby
group :development, :test do
  gem 'barcoop', require: false
end  
```

Or to your gem's `gemspec` file:

```ruby
spec.add_development_dependency 'barcoop'
```

To use it just add the following line to your `.rubocop.yml` file:
```yaml
inherit_gem:
  barcoop: conf/rubocop.yml
```

### Cops

This gems provides the following cops:

[AvoidFixtures](lib/barcoop/cops/avoid_fixtures.rb): Avoid using fixtures, use `FactoryGirl` instead

[AvoidRailsEnv](lib/barcoop/cops/avoid_rails_env.rb): Avoid using `Rails.env.environment?` and prefer adding a feature flag in a configuration file.

[AvoidTimeout](lib/barcoop/cops/avoid_timeout.rb): `Timeout.timeout` is not thread safe, see http://www.mikeperham.com/2015/05/08/timeout-rubys-most-dangerous-api/
