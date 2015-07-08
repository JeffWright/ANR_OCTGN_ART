#!/usr/bin/ruby

setxmls = `ls ../GameDatabase/0f38e453-26df-4c04-9d67-6d43de939c77/Sets/**/set.xml`

SHOW_ALL_SETS = ARGV.include?("-a")

def print_set(setxml)
	head = `head -n7 #{setxml}`
	head =~ /name="(.*?)"/
	name = $1
	head =~ /id="(.*?)"/
	id = $1
	output = "name = #{name}\n"
	output += "  id = #{id}\n"
	
	imglist = `ls 0f38e453-26df-4c04-9d67-6d43de939c77/Sets/#{id}/Cards`.split("\n")
	numCards = imglist.size;
	output += "  numCards = #{numCards}\n"

	if(numCards < 10 || SHOW_ALL_SETS)
		puts output
		puts "   ---   "
	end
end

setxmls.split("\n").each { |set|
	# puts " >> #{set}"
	print_set(set)
}
