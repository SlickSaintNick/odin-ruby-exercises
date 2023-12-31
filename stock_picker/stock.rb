# frozen_string_literal: true

def stock_picker2(prices)
  max_i = [0, 1]

  prices.each_with_index do |buy_price, buy_i|
    prices.each_with_index do |sell_price, sell_i|
      next if sell_i <= buy_i

      if (sell_price - buy_price) > prices[max_i[1]] - prices[max_i[0]]
        max_i = [buy_i, sell_i]
      end
    end
  end
  max_i
end

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
p stock_picker2(prices)
