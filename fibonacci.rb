def fibs(n)
  result = []
  n.times do |n|
    if n <= 1
      result << n
    else
      result << (result[n - 2] + result[n - 1])
    end
  end
  result
end
