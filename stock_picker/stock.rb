# frozen_string_literal: true

def stock_picker(prices)
  length = prices.length

  max_buy_index = 0
  max_sell_index = 1
  max_profit = prices[max_sell_index] - prices[max_buy_index]

  for buy_index in (0..(length - 2))
    for sell_index in ((buy_index + 1)..(length - 1))
      profit = prices[sell_index] - prices[buy_index]
      if profit > max_profit
        max_buy_index = buy_index
        max_sell_index = sell_index
        max_profit = profit
      end
    end
  end
  [max_buy_index, max_sell_index]
end

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
result = stock_picker(prices)
p result
