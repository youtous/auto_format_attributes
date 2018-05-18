# AutoFormatAttributes
AutoFormatAttributes helps to format string attributes from ActiveRecord or ActiveModel.

It works by adding a before_validation hook to the record.
## Usage

```
class User < ActiveRecord::Base

  # the last name will be in UPPERCASE
  auto_upcase_attributes :last_name

  auto_capitalize_attributes :name, :first_name

  auto_downcase_attributes :profile_url
  
  auto_titleize_attributes :title
end
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'auto_format_attributes'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install auto_format_attributes
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
