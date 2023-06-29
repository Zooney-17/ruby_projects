def stock_picker(array)
  negative_hash = Hash.new
  profit_array = []
  i = 0
  loop do
    for integer in array[i+1..-1]
      if array[i] - integer < 0
        profit_array.push(array.index(array[i]), array.index(integer))
        negative_hash[profit_array] = array[i] - integer
        profit_array = []
      end
    end
    i += 1
    break if integer == nil
  end
  p negative_hash.min_by { |key, value| value }&.first
end

stock_picker([17,3,6,9,15,8,6,1,10])