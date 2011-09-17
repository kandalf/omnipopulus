# OmniPopulus

OmniPopulus (formerly known as OmniSocial) is a Rails 3 engine for Twitter, Facebook, GitHub and LinkedIn logins using [OmniAuth](http://github.com/intridea/omniauth).

## Installation

To use OmniPopulus in a Rails 3 application:

1. Require it in the Gemfile: `gem 'omnipopulus'`

2. Install it by running `bundle`.

3. Run `rails generate omnipopulus` to copy an initializer and database migration your application.

4. Edit `config/initializers/omnipopulus.rb` and include your application's OAuth configurations.

5. Run `rake db:migrate` to create the user and login_account tables.

6. Test that the logins work by accessing `/login` inside your application.

Some more detailed installation instructions are in the [project announcement article](http://icelab.com.au/articles/welcome-to-the-omnisocial/).

## Contributors

* [Klaus Hartl](http://github.com/carhartl)
* [Stephen Aument](http://github.com/stephenaument)
* [Lucas Allan](http://github.com/lucasallan)
* [James Dumay](http://github.com/i386)
* [Pablo Dejuan](http://github.com/pdjota)
* [Chris Oliver](http://github.com/excid3)

## Copyright & License

OmniPopulus is Copyright (c) 2010-2011 [Tim Riley](http://openmonkey.com/) and [Icelab](http://icelab.com.au/), and is released under MIT License.
