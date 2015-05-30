#!/usr/bin/ruby

TOKEN_HASH = "21bf9e05-fb23-4b1d-b89a-398f671f5999"
OCTGN_DIR = "/cygdrive/c/Users/Administrator/Documents/OCTGN"

def download(cardnum, path)
    card_url = "http://netrunnerdb.com/web/bundles/netrunnerdbcards/images/cards/en/#{cardnum}.png"
    download_command = "curl #{card_url} -o #{path}"
    puts "downloading #{card_url}"
    puts download_command
    system(download_command)
end


#cardnum = ARGV[0]
#path = ARGV[1]
#download(cardnum, path)

def download_all_cards()
	Dir.chdir("#{OCTGN_DIR}/GameDatabase/0f38e453-26df-4c04-9d67-6d43de939c77/Sets/")
	subdir_list=Dir["*/"]
	subdir_list.map! {|x| x.sub("/", "")}
	subdir_list.delete(TOKEN_HASH)
	puts subdir_list

	progress = 1
	subdir_list.each do |hsh|
		puts "### PROGRESS: #{progress}/#{subdir_list.size} ###"
		get_all_for_set(hsh)
		progress += 1
	end
end

def get_all_for_set(set_hash)
	puts "get_all_for_set: #{set_hash}"
	card_info_xml = "#{OCTGN_DIR}/GameDatabase/0f38e453-26df-4c04-9d67-6d43de939c77/Sets/#{set_hash}/set.xml"
	card_images_directory = "#{OCTGN_DIR}/ImageDatabase/0f38e453-26df-4c04-9d67-6d43de939c77/Sets/#{set_hash}/Cards"

	system("rm " + card_images_directory + "/*")

	File.open(card_info_xml).each do |line|
		if(line=~/<card id="(.*?)"/)
			card_id = $1
			card_sequence = card_id[-5..-1]
			puts "id = #{card_id} sequence = #{card_sequence}"
			download(card_sequence, card_images_directory + "/#{card_id}.png")
		end
	end
end

input = ARGV[0]
if input == nil
	puts "run with parameter: \"ALL\" for all sets, or the hash for a single set (e.g. \"4be654e8-095a-4886-9817-53a78b9d6930\""
	exit(0)
end

get_all_for_set(input)
