def is_balanced?(symbols)
  middle = (symbols.length / 2) - 1
  symbols.middle.times do |symbol|
    if symbols[middle] == symbols[middle + 1]
      true
    end
  end
  false
end

p is_balanced?("{[()]}") #=> true
p is_balanced?("{[([)]]}") #=> false