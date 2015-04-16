# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

marvel = Company.create(name:"Marvel Comics", date_founded: "1939", in_business: true )
dc = Company.create(name:"DC Comics", date_founded: "1934", in_business: true)
image = Company.create(name: "Image Comics", date_founded: "1992", in_business: true)

user = User.create(name: "User1", email: "blah@blah.blah", password_digest: "password1", remember_token: "", admin: false )

wicdiv = Comic.create(name: "The Wicked + The Divine", writer: "Kieron Gillen", artist: "Jamie McKelvie", year: "2014", img_url: "https://d138hkes00e90m.cloudfront.net/release_images/TWTD_1A.jpg", company: image, company_id: image.id, user: user, user_id: user.id)
# gotg = Comic.create(name: "Guardians of the Galaxy", writer: "Dan Abnett & Andy Lanning", artist: "Various", year: "2008", img_url: "http://x.annihil.us/u/prod/marvel/i/mg/3/00/517ad45130d84/portrait_incredible.jpg", company: marvel, company_id: marvel.id, user: , user_id: )
# guardians = Comic.create(name: "Guardians of the Galaxy", writer: "Brian Michael Bendis", artist: "Various", year: "2013", img_url: "http://i.newsarama.com/images/i/000/098/178/original/GuardiansOfTheGalaxy1cov_02.jpg?1364335789", company: marvel, company_id: marvel.id, user:, user_id: )
