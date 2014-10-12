# Figures out the best times to buy stock
# Should work for future stock, need to program in future predictor method.
def stock_picker(prices)
  buy_date = 0
  sell_date = 0
  max_profit = 0
  
  (0...prices.size).each do |buy|
    ((buy + 1)...prices.size).each do |sell|
      
      profit = prices[sell] - prices[buy] 
      if max_profit < profit
        max_profit = profit
        buy_date = buy
        sell_date = sell
      end
    end
  end
  [buy_date, sell_date]
end

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

p stock_picker(prices)