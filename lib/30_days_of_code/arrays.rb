def reverse(array)
  array.reverse().to_s.delete("[]").split(",").join("")
end

arr = [1,4,3,2]

print reverse(arr)