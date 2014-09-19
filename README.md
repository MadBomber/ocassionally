# ocassionally

ocassionally it works; and, ocassionally it doesn't.  Why should
your program work the same way every time?  That is boring.
Add some spice to your code.  Make debugging it harder.
Model real-world things with fuzzy conditionals.

Conditional blocks of the 'if' and 'unless' are so black-and-white.
Add some color to your code with ocassionally.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ocassionally'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ocassionally

## Usage

```ruby
require 'ocassionally'
include Ocassionally

# Default: default is 25% of the time test the conditional
ocassionally(some_conditional) do
  # interesting things
end

# Check the conditional 75% of the time
ocassionally(75, some_conditional) do
  # surprising things
end

# Is some_conditional too expensive to execute all the time?
# Only execute it ocassionally.
ocassionally(25, "some_conditional") do
  # unexpected things
end

ocassionally("sleep(5)") { puts "Sorry I was sleeping.  What do you want?" }

```

The order of the two parameters does not matter.  The default for
the rate is 25% the default for the conditional is true.  So that
means you can also do this:

```ruby
ocassionally do
  # weird things a quarter of the time
end

ocassionally(95) do
  # weird things most of the time
end
```

If you get tired of ocassionally doing things.  Try
doing them #sometimes, #seldom, #often, #very_often, #every_time or #never.

If you don't like the simplistic #__probability_function(rate)
then over-ride it with your own.  Its Ruby.  Its your
play ground.

## Take a look at this other gem

I originally called this library maybe; but, that got co-opted by
folks who can't handle nil.  Then I called it sometimes; but, someone else
already had that gem name which does something similar.  Take a look
at this one:

https://github.com/sudara/sometimes

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ocassionally/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
