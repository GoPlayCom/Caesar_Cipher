def caesar_cipher(str, num)
	alpha = Range.new('a', 'z').to_a
	result = ""
	check = false

	str.each_char do |i|
		for j in alpha do
			letter = (alpha.index(j)+num+1) % (alpha.length+1) - 1
			if i == j.upcase
				result += alpha[letter].upcase
				check = true
			elsif i.downcase == j
				result += alpha[letter]
				check = true
			end
		end
		if check
			check = false
		else
			result += i
		end
	end
	puts result
end

caesar_cipher("HOLY SHIT!!!", 738392053)
caesar_cipher("it's work, and i can go sleep))", 3)

=begin
3 = d #done
28 = b #done
result += i if ? #done
do short code #todo
=end
