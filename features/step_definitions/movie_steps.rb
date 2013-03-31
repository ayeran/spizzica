Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    Movie.create!(movie)
 	 end
 	 assert Movie.all.count == movies_table.hashes.size
	#flunk "Unimplemented"
 	end

Then /^the director of "(.*)" should be "(.*)"/ do |title,director|
	m=Movie.find_by_title(title)
	assert (director == (m.director))
	end

Then /^(?:|I )should be on the Similar Movies page for "(.*)"/ do |title|
		puts title
	end