# Even fibonacci numbers

def fibSeq(n)

  a = [0]
  b = [0]

  (n+1).times do |i|
    if i==0
      a[i] = 0
    elsif i==1
      a[i] = 1
    else
      a[i] = a[i-1] + a[i-2]
      if a[i]!=0 and a[i].even?
        b.push(a[i])
      end
    end
  end
  b.delete(0) #comment this line if '0' is to be included
  return b.length
end

#puts fibSeq(42) #uncomment if '0' is to be included
puts fibSeq(45)
