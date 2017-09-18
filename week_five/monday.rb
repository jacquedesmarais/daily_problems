sentences = ["hello", "old friend", "today", "mac and cheese"]

result = sentences.map { |word| word.split('').include?(" ") ? word.capitalize : word }
p result

# ["hello", "Old friend", "today", "Mac and cheese"]