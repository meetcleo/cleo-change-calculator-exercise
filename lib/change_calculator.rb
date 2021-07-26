class ChangeCalculator
  def initialize
  end

  def coins_needed(amount:)
    return [] if amount.zero?

    required_coins = []
    available_coins.each do |available_coin|
      if amount >= available_coin
        required_coins << available_coin
        amount -= available_coin
      end
    end

    required_coins
  end

  private

  DENOMINATIONS = [
     50,
      5,
    200,
     20,
      2,
    100,
     10,
      1,
  ].freeze
  private_constant :DENOMINATIONS

  def available_coins
    DENOMINATIONS
  end
end
