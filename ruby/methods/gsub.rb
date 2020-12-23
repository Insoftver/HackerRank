def mask_article(text, word)
	word = word.join('|')
	text.gsub(/#{word}/) {|match| strike(match)}
end

private

def strike(word)
  "<strike>#{word}</strike>"
end

puts mask_article("Hello World! This is crap!", ["crap"])