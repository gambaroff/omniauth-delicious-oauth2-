# OmniAuth Delicious OAuth2 Strategy

Strategy to authenticate with Delicious via OAuth2 in OmniAuth.

Get your API key at: https://delicious.com/settings/developer  Note the Client ID and the Client Secret.

**Note**: You must enable the "Contacts API" and "Delicious+ API" via the Delicious API console. Otherwise, you will receive an `OAuth2::Error` stating that access is not configured when you attempt to authenticate.

For more details, read the Delicious docs: https://github.com/SciDevs/delicious-api/blob/master/api/oauth.md

# Omniauth::Delicious::Oauth2

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-delicious-oauth2'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-delicious-oauth2

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://github.com/[my-github-username]/omniauth-delicious-oauth2/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
