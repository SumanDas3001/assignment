100.times do
	Author.create({
		name: Faker::Name.name, 
		author_bio: Faker::Lorem.sentence,
		academics: Faker::Lorem.sentence,
		awards: Faker::Lorem.sentence,
		profile_pic: File.open(File.join(Rails.root, "app/assets/images/image.jpg")),
	})
end

250.times do
	Review.create({
		name: Faker::Name.name,
		rating: Faker::Number.between(1,5),
		title: Faker::Book.title,
		description: Faker::Lorem.sentence,
    book_id: Faker::Number.between(1,500)         
	})
end

500.times do
	Book.create({
		book_name: Faker::Book.title,
		short_description: Faker::Lorem.sentence,
		long_description: Faker::Lorem.sentence,
		book_chapter: Faker::Lorem.word,
		publication_date: Faker::Date.between(2.days.ago, Date.today),
		genre: Faker::Book.genre,
    author_id: Faker::Number.between(1,100)
	})
end