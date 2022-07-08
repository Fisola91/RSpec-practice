def stock_picker(stock_prices)
  # Iterate(map, find_index, each_with_index) over the array
  hash = {}
  stock_prices.each_with_index do |buy_price, buy_day|
    # p buy_day
    stock_prices[(buy_day + 1)..].each_with_index do |sell_price, sell_day|
      p sell_day
      sell_index = sell_day + buy_day + 1
      # p sell_index
      key = [buy_day, sell_index]
      # p key
      hash[key] = sell_price - buy_price
      # p hash
    end
  end
  hash.max_by { |key, value| value }.first
end
# stock_prices = [17,3,6,9,15,8,6,1,10]
# 0,1,2,3,4,5,6,7,8
