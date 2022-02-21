require 'pry'

class Main
  def initialize(prices)
    @prices = prices
    @max = 0
  end

  def compute
    return "Error" unless valid?

    @prices.each_with_index do |pricea, idxa|
      @prices.each_with_index do |priceb, idxb|
        next if idxb <= idxa

        @max = [@max, priceb - pricea].max
      end
    end

    @max
  end

  def valid?
    validate_length && validate_prices
  end

  def validate_length
    @prices.length >= 1 && @prices.length <= 105
  end

  def validate_prices
    @prices.find { |price| price < 0 || price > 200 }.nil?
  end
end
