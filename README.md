# OmniSocial

A Rails 3 engine for Twitter, Facebook and LinkedIn logins using [OmniAuth](http://github.com/intridea/omniauth)

## Installation

To use OmniSocial in a Rails 3 application:

1. Require it in the Gemfile: `gem 'omnisocial'`

2. Install it by running `bundle`.

3. Run `rails g omnisocial` to copy an initializer, database migration and some CSS and image assets into your base application directory.

4. Edit `config/initializers/omnisocial.rb` and include your application's Twitter and Facebook OAuth configuration.

5. Run `rake db:migrate` to create the user and login_account tables.

6. Test that the logins work by accessing `/login` inside your application.

Some more detailed installation instructions are in the [project announcement article](http://icelab.com.au/articles/welcome-to-the-omnisocial/).

## Contributors

* [Klaus Hartl](http://github.com/carhartl)
* [Stephen Aument](http://github.com/stephenaument)

## Copyright & License

OmniSocial is Copyright (c) 2010 [Tim Riley](http://openmonkey.com/) and [Icelab](http://icelab.com.au/), and is released under MIT License.

The "Sign in with Twitter/Facebook" buttons are from [Komodo Media](http://www.komodomedia.com/blog/2009/05/sign-in-with-twitter-and-facebook-buttons/), distributeed under the [Creative Commons Attribution-Share Alike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/).

The twitter bird image is courtesy of [Pasquale D’Silva](http://wefunction.com/2008/07/freebie-twitter-icons-illustration/).

