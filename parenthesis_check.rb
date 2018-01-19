input = gets.chomp.split('')
stack = []

input.each do |c|
  case c
  when '“','[','{','<','('
    stack.push(c)
  when '”'
    a = stack.pop
    if !(a == '“')
      stack.push(a)
    end
  when ']'
    a = stack.pop
    if !(a == '[')
      stack.push(a)
    end
  when '}'
    a = stack.pop
    if !(a == '{')
      stack.push(a)
    end
  when '<'
    a = stack.pop
    if !(a == '>')
      stack.push(a)
    end
  when ')'
    a = stack.pop
    if !(a == '(')
      stack.push(a)
    end
  end
end

puts stack.empty?
