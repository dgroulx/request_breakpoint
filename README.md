# RequestBreakpoint

Rack middleware that sets a breakpoint for interactive debugging, then calls the Rack app as normal.

## Installation

Add this line to your application's Gemfile:

    gem 'request_breakpoint', git: 'git@github.com:dgroulx/request_breakpoint.git'

And then execute:

    $ bundle

## Usage

Usage will vary based on how you are developing your application. For a Rails app, simply add the line 
	
	config.middleware.use 'RequestBreakpoint::Breakpoint'
	
to your `config/application.rb` file. For finer grained controll over where your breakpoint is set, see [http://guides.rubyonrails.org/rails_on_rack.html#configuring-middleware-stack](http://guides.rubyonrails.org/rails_on_rack.html#configuring-middleware-stack).

By default, RequestBreakpoint will ignore all requests for resources ending in the extensions *.css, *.jpeg, *jpg, *.js, and *.png. This list can be customized by sending in the list of extensions you wish to ignore as an array. For example, to only ignore json and html requests, configure like so:

	config.middleware.use 'RequestBreakpoint::Breakpoint', %w(html json)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
