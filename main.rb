require 'pry'

class Main
  def initialize(prices)
    @prices = prices
    @max = 0
  end

  def compute
    return "Error" unless valid?

    @prices.each_with_index do |pricea, idxa|
      @prices[idxa + 1..-1].each_with_index do |priceb, idxb|
        @max = [@max, priceb - pricea].max
      end
    end

    @max
  end

  def valid?
    valid_length? && valid_prices?
  end

  def valid_length?
    @prices.length >= 1 && @prices.length <= 105
  end

  def valid_prices?
    @prices.find { |price| price < 0 || price > 200 }.nil?
  end
end
