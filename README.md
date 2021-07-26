# Cleo Change Calculator Exercise (Grad Hiring Edition)

This is an implementation of a change calculator such as you might find in
a vending machine.  Given an amount of money, it will tell you all the coins you need to make that amount using the standard UK denominations of coins (£2, £1, 50p, 20p, 10p, 5p, 2p, 1p).  For example, to make change of £2.12 you need one each of the £2, 10p, and 2p coins whereas to make £1.44 you need one £1 and two each of the 20p and 2p coins.  We will minimise the coins used to make the change, so while you can make £1.53 with three 50p coins and three 1p coins the result we want is one each of the £1, 50p, 2p and 1p coins because it uses less coins.

## Installation

Execute:

    $ bundle install

To get everything going.  Should work with most newish rubies as we've not specified an explicit one.  Although it was bundled with bundler 2.1.4 so you'll probably need at least bundler 2.x.

## Usage

There's a simple class `ChangeCalculator` in `lib/change_calculator.rb`, that implements the change calculation behaviour we need.  You can run it via `irb` as follows

    $ bundle console
    irb(main)> require './lib/change_calculator'
    irb(main)> ChangeCalculator.new.coins_needed(amount: 163)
    => [100, 50, 10, 2, 1]

It is supported by tests written in rspec in `spec/change_calculator_spec.rb` which you can run these via:

    $ bundle exec rspec

or

    $ bundle exec rake spec

We've also included `pry` for you to drop in if you want to debug the code while you're running the specs.

Note: all coins and amounts are expressed in pence using whole integers - this calculator would be plugged into a system that does conversion to £x.yyp notation in a UI.
