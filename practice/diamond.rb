def build_diamond(_length)
	diamond_length = (_length * 2) - 1
	spaces = _length - 1
	symbols = 1
	grow = true

	for i in 0..diamond_length-1 do
		spaces.times { print " " }
		symbols.times { print "+" }
		print "\n"

		if grow
			spaces -= 1
			symbols += 2
		else
			spaces += 1
			symbols -= 2
		end

		grow = false if symbols == diamond_length
	end

end

# build_diamond(1)
# build_diamond(2)
# build_diamond(3)
# build_diamond(4)
# build_diamond(5)
build_diamond(10)