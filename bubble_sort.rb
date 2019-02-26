class BubbleSort
  def self.bubbleSort(arr)
     for i in 0 ... (arr.length - 1)
         swapped = false
         for j in 0 ... (arr.length - i - 1)
             if arr[j] > arr[j + 1]
                 arr[j], arr[j + 1] = arr[j + 1], arr[j]
                 swapped = true
             end
         end
         break if swapped == false
     end
     arr
  end

  def self.bubble_sort_by(arr)
    for i in 0 ... (arr.length - 1)
      swapped = false
      for j in 0 ... (arr.length - i - 1)
        if yield(arr[j], arr[j+1]) > 0
          arr[j], arr[j + 1] = arr[j + 1], arr[j]
          swapped = true
        end
      end
      break if swapped == false
    end
    puts arr
  end
end
nums = [3, 2, 1, 5, 21, 8, 6, 9, 4, 7]
puts BubbleSort.bubbleSort(nums)
p nums

puts BubbleSort.bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length}