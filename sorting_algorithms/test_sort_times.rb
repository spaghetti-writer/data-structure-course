require 'benchmark'
require_relative 'bubble_sort.rb'
require_relative 'insertion_sort.rb'
require_relative 'selection_sort.rb'

first_test = [3,6,12,4,2,-1,0,20,10,8,7,3,1,0,4,5,-23,2,3-2,-1,9,4,2,1,-0,5,19,4,99,2,-1,102,114,120,128,131,233,-123,199,999,-231,0,1,-45,763,-132,987,-132,831,-672]

Benchmark.bm do |x|
	p "bubble_sort"
	x.report("res: ") {
		bubble_sort(first_test)
	}
	p "insertion"
	x.report("res: ") {
		insertion_sort(first_test)
	}
	p "insertioniv"
	x.report("res: ") {
		insertion_sort_iv(first_test)
	}
	p "selection"
	x.report("res: ") {
		selection_sort(first_test)
	}
	p "selectioniv"
	x.report("res: ") {
		selection_sort_iv(first_test)
	}
end

p ""
p "control #{first_test}"
