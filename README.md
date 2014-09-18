# Sometimes

Sometimes it works; and, sometimes it doesn't.  Why should
your program work the same way every time.  That is boring.
Add some spice to your code.  Make debugging it harder.
Model real-world things with fuzzy conditionals.

Conditional blocks of the 'if' and 'unless' are so black-and-white.
Add some color to your code with sometimes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sometimes'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sometimes

## Usage

```ruby
require 'sometimes'
include Sometimes

# Default: default is 50% if the time test the conditional
sometimes(some_conditional) do
  # interesting things
end

# Check the conditional 75% of the time
sometimes(75, some_conditional) do
  # surprising things
end

# Is some_conditional too expensive to execute all the time?
# Only execute it sometimes.
sometimes(25, "some_conditional") do
  # unexpected things
end

sometimes("sleep(5)") { puts "Sorry I was sleeping.  What do you want?" }

```

The order of the two parameters does not matter.  The default for
the rate is 50% the default for the conditional is true.  So that
means you can also do this:

```ruby
somestimes do
  # weird things half of the time
end

somestimes(95) do
  # weird things most of the time
end
```

If you get tired of sometimes doing things.  They
doing them #ocassionally, #seldom, #often, #very_often,
#every_time or #never.

If you don't like the simplistic #__probability_function(rate)
then over-ride it with you own.  Its Ruby.  Its your
play ground.


## Contributing

1. Fork it ( https://github.com/[my-github-username]/sometimes/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
