def stock_picker(array)
  buy = array.max
  idx_buy = 0
  sell = 0
  idx_sell = 0
  profit = 0
  for i in 0...array.length
    if array[i] < buy
      buy = array[i]
      sell = 0
    end
    for j in i+1...array.length
      if array[j] > sell
        sell = array[j]
        if sell - buy > profit
          profit = sell - buy
          idx_buy = i 
          idx_sell = j
        end
      end
    end    
  end
  [idx_buy, idx_sell]
end
p stock_picker([17,3,6,9,15,8,6,1,10])