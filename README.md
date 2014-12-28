# DelegateIdTo

This gem provide two methods for access to id of has_one association.

## Installation

Add this line to your application's Gemfile:

    gem 'delegate_id_to'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install delegate_id_to

## Usage

### Without delegate_id_to

    class Foo < ActiveRecord::Base
       has_one :bar
       has_one :user

       delegate :id, to: :bar, allow_nil: true
       delegate :id, to: :user, allow_nil: true
    end

    foo = Foo.last
    foo.bar     #=> nil
    foo.bar_id  #=> id deprecated for nil
    foo.user_id #=> 42

### With delegate_id_to

    class Foo < ActiveRecord::Base
       has_one :bar
       has_one :user

       delegate_id_to :bar, :user
    end

    foo = Foo.last
    foo.bar     #=> nil
    foo.bar_id  #=> nil
    foo.user_id #=> 42

### With delegate_id_to_singular_associations

    class Foo < ActiveRecord::Base
       has_one :bar
       has_one :user

       delegate_id_to_singular_associations
    end

    foo = Foo.last
    foo.bar     #=> nil
    foo.bar_id  #=> nil
    foo.user_id #=> 42

## Contributing

1. Fork it ( http://github.com/shipiev/delegate_id_to/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
