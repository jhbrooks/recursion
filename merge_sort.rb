def merge_sort(a)
  # alternate one line solution
  # a.length > 1 ? merge(merge_sort(a[0...(a.length / 2)]), merge_sort(a[(a.length / 2)..-1])) : a

  if a.length > 1
    merge(merge_sort(a[0...(a.length / 2)]), merge_sort(a[(a.length / 2)..-1]))
  else
    a
  end
end

def merge(a1, a2)
  a_merged = []
  until a1.empty? && a2.empty?
    if a1.empty?
      a_merged << (a2.shift)
    elsif a2.empty?
      a_merged << (a1.shift)
    else
      a_merged << (a1.first <= a2.first ? a1.shift : a2.shift)
    end
  end
  a_merged
end
