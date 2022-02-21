require 'pry'

class Main
  attr_reader :prices

  def initialize(prices)
    @prices = prices
  end

  def compute
    return "Error" unless valid?

    [max_price, 0].max
  end

  def max_price
    diffs = []

    prices.each_with_index do |left_price, idx|
      prices[idx + 1..-1].each do |right_price|
        diffs << right_price - left_price
      end
    end

    diffs.max
  end

  def valid?
    valid_length? && valid_prices?
  end

  def valid_length?
    prices.length >= 1 && prices.length <= 105
  end

  def valid_prices?
    prices.find { |price| price < 0 || price > 200 }.nil?
  end
end
