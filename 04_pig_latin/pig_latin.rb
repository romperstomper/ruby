#wjite your code here
def translate(args)
  v = %w[a e i o u]
  s = 0
  w = 0
  chars = args
  suf = 'ay'
  res = ''
  result = []
  sargs = args.split
  sargs.each do |arr|
    k = 0
    c = 0
    arr.each_char do |x|
      if arr.include?('qu') && k == arr.index('qu')
          res += 'qu'
          k += 1
          c += 2
      elsif x.start_with?(*v)
        result[w] = arr[c..-1] + res + suf 
        w += 1
        res = ''
        break
      else
        res += x
        c +=1
        k +=1
      end
    end
  end
  return result.join(" ")
end
