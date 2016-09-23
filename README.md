Barcoo's shared rubocop.yml config file
====================

### Use

To use it just add the following line to your `.rubocop.yml` file:
```yaml
inherit_from:
  - https://raw.githubusercontent.com/barcoo/barcoop/master/rubocop.yml
```

### Cops

To use the cops copy them over to your project and require them in your `.rubocop.yml` file:
```yaml
require:
  - ./cops/avoid_rails_env.rb
  - ./cops/avoid_fixtures.rb
  - ./cops/avoid_timeout.rb
```

[AvoidFixtures](cops/avoid_fixtures.rb): Avoid using fixtures, use `FactoryGirl` instead

[AvoidRailsEnv](cops/avoid_rails_env.rb): Avoid using `Rails.env.environment?` and prefer adding a feature flag in a configuration file.

[AvoidTimeout](cops/avoid_timeout.rb): `Timeout.timeout` is not thread safe, see http://www.mikeperham.com/2015/05/08/timeout-rubys-most-dangerous-api/
