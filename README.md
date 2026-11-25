# Cleo Change Calculator Exercise

This is a bootstrap repo for running the cleo change calculator exercise which
is part of our backend hiring process.

## Description

Much of our day-to-day as engineers is about writing code, so in this session
we’d like to see you write some code to complete part of the problem. An
interesting part of a vending machine is how it decides which coins to use when
giving the customer's change. We’d like to build that part of the system with
you.

Build a service that given an amount of money will return a list of the coins
needed to make up that amount of money. For example, to make £2.12 the service
should tell you that you need one each of the £2, 10p, and 2p coins whereas to
make £1.44 it should tell you that you need one £1 and two each of the 20p and
2p coins.  Assume, for now, that the service has access to an infinite amount of
coins, so can always make change.  Again, just some business logic that can be
used by other parts of the system, do not think about UI code.

## Installation

Execute:

    bundle install

To get everything going.  Should work with most newish rubies as we've not
specified an explicit one.  Although it was bundled with bundler 2.1.4 so
you'll probably need at least bundler 2.x.

## Usage

There's an empty class `ChangeCalculator` in `lib/change_calculator.rb`, this is
where we expect you to put the code. We've set up both rspec (./spec) and
minitest (./test) for you to bootstrap testing, pick whichever you prefer most.

You can run minitest via:

    bundle exec rake test

and rspec via:

    bundle exec rspec

or

    bundle exec rake spec

We've also included `pry` for you to drop in if you want to debug the code while
you're running the specs.
