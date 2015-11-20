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

def fibs_rec(n)
  # alternate one line solution
  # n <= 2 ? Array.new(n) { |i| i } : fibs_rec(n - 1) << (fibs_rec(n - 2).last + fibs_rec(n - 1).last)

  if n == 0
    []
  elsif n == 1
    [0]
  elsif n == 2
    [0, 1]
  else
    fibs_rec(n - 1) << (fibs_rec(n - 2).last + fibs_rec(n - 1).last)
  end
end
