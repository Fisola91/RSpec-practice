def two_sum(nums, target)
  nums.each_with_index do |sum, num|
  end
end

# def two_sum(nums, target)
#   nums.each_with_index do |val1, index1|
#      nums.each_with_index do |val2,index2|
#        if (index1 != index2)
#          if(val1 == target - val2)
#             return [index1,index2]
#          end
#        end
#      end
#   end
# end

# def two_sum(nums, target)
#   map = Hash.new
#   nums.each_with_index { |val, index|
#       if map.key? (target - val)
#           return [map[target - val], index]
#       end
#       map[val] = index
#   }
# end

# def two_sum(nums, target)
#   map = Hash.new
#   nums.each_with_index { |val, index|
#       if map.key? (target - val)
#           return [map[target - val], index]
#       end
#       map[val] = index
#   }
# end
