#write your code here
def echo(args)
  return args
end

def shout(args)
  return args.upcase
end

def repeat(args, num=0)
  if num == 0
    return args + ' ' + args
  end
  r = ' ' + args
  args + (r*(num-1))
end

def start_of_word(args, num)
  return args[0..num-1]
end

def first_word(args)
  return args.split[0]
end

def titleize(args)
  res = [args.split[0].capitalize]
  args.split[1..-1].each do |x|
    puts "value? #{x}"
    x = x.capitalize unless x == 'and'|| x == 'the'||x=='over'
    res.push(x) 
  end
  res.join(' ')
end
