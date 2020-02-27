# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "nokogiri"
require "open-uri"

Availability.destroy_all
Like.destroy_all
Unlike.destroy_all
Lapin.destroy_all
Meeting.destroy_all
User.destroy_all
Place.destroy_all

# PROFILE_PICS = [
# "https://geeko.lesoir.be/wp-content/uploads/sites/58/2017/11/Toni-Kelly.jpg",
# "https://cdn.pixabay.com/photo/2014/08/27/19/28/selfie-429448_960_720.jpg",
# "https://cdn-media.rtl.fr/online/image/2016/0802/7784308277_kristen-hancher-mannequin-canadien-qui-a-ete-l-un-des-premiers-a-populariser-le-fingermouthing.JPG",
# "https://static1.purepeople.com/articles/9/34/20/89/@/4885736-sahra-la-femme-de-jordan-des-ch-tis-950x0-1.jpg",
# "https://previews.123rf.com/images/lipik/lipik1606/lipik160600558/58759223-belle-femme-faisant-des-selfies-en-position-couchée-sur-le-canapé-ou-un-canapé-à-la-maison-dame-aux-cheveu.jpg",
# "https://c8.alamy.com/compfr/tt87me/femme-d-affaires-a-smartphone-faire-sourire-et-selfies-femme-heureuse-plan-moyen-tt87me.jpg",
# "https://image.freepik.com/photos-gratuite/selfie-femme-dans-nature_23-2147828069.jpg",
# "https://thumbs.dreamstime.com/z/autoportrait-de-femme-de-selfie-de-forme-physique-après-séance-d-entraînement-50655908.jpg",
# "https://i1.wp.com/barnab-paris.com/blog/wp-content/uploads/2017/05/selfie-homme-grande-taille-6.png",
# "https://www.gossip.fr/wp-content/uploads/news/2014-08/photos-baptiste-giabiconi-nouvelle-couleur-de-cheveux-et-rafale-de-selfies-sexy-sur-instagram_53f3632e0e60c.JPG",
# "https://assets.afcdn.com/story/20140502/223265_w980h638c1cx273cy150.jpg",
# "https://media.gqmagazine.fr/photos/5bb32ce272530800113bf69c/master/w_1254,c_limit/selfie_5080.jpeg",
# "https://image.freepik.com/photos-gratuite/souriant-jeune-homme-kayakiste-prenant-selfie_23-2147870361.jpg",
# "https://i.pinimg.com/originals/00/18/e6/0018e6211b1f30c0439b5ffc314fa0aa.jpg",
# "https://www.ztele.com/polopoly_fs/1.1401368!/image/selfie-douche.jpg_gen/derivatives/landscape_490/selfie-douche.jpg",
# "https://c8.alamy.com/compfr/xc9xwb/jeune-homme-chantant-sous-la-douche-xc9xwb.jpg",
# "https://c8.alamy.com/compfr/r57k6f/jeune-homme-couche-sur-une-feuille-dans-le-parc-et-prendre-photo-avec-sourire-niais-selfies-r57k6f.jpg",
# "https://bridoz.com/wp-content/uploads/2015/12/122415-mastering-the-art-of-animal-selfie-2.jpg",
# "https://www.glamourparis.com/uploads/images/thumbs/201603/19/jakohara_476006629_north_400x501_transparent.jpg"]
SEX = ["Homme", "Femme"]
SEXUAL_ORIENTATION =["hetero", "homo", "bi"]
days = User::DAYS


file = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582639348/nqnbgq5h68wlhql62fkf.jpg")
file2 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582638612/pqqxbthn0bzqtilzsogq.jpg")
file3 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582638775/rbzkt3r5tpvupgxqbbhe.jpg")
file4 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582639195/mqra2ye6msbzskc66swm.jpg")

user1 = User.new(email:"jf@nomail.com", name: "jf", password: "coucou", description: "je suis BG", age:25, height: "180", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "hetero")
user1.photos.attach([{io: file, filename: " ", content_type: 'image/jpg'}, {io: file2, filename: " ", content_type: 'image/jpg'}, {io: file3, filename: " ", content_type: 'image/jpg'}, {io: file4, filename: " ", content_type: 'imagejpg'} ])

user1.save!

puts "user created"

file1 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582639348/nqnbgq5h68wlhql62fkf.jpg")
user2 = User.new(email:"j@nomail.com", name: "Gigi", password: "coucou les copaings", description: "je suis une BG", age:27, height: "170", smoker: false,  drinker: true, sex: "Femme", sexual_orientation: "homo")
user2.photos.attach(io: file1, filename: " ", content_type: 'image/jpg')
user2.save!

puts "user created"

file5 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582638612/pqqxbthn0bzqtilzsogq.jpg")
file6 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582638612/pqqxbthn0bzqtilzsogq.jpg")

user3 = User.new(email:"fifi@nomail.com", name: "Robert", password: "Hi friends", description: "match pour me découvrir", age:23, height: "185", smoker: true,  drinker: false, sex: "Homme", sexual_orientation: "hetero")
user3.photos.attach([{io: file5, filename: " ", content_type: 'image/jpg'}, {io: file6, filename: " ", content_type: 'image/jpg'}])

user3.save!

puts "user created"


file7 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582638775/rbzkt3r5tpvupgxqbbhe.jpg")
file8 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582638612/pqqxbthn0bzqtilzsogq.jpg")
file9 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582639348/nqnbgq5h68wlhql62fkf.jpg")

user4 = User.new(email:"no@nomail.com", name: "Béa", password: "coucou hey hye", description: "hellooooo", age:25, height: "165", smoker: true,  drinker: true, sex: "Femme", sexual_orientation: "hetero")
user4.photos.attach([{io: file7, filename: " ", content_type: 'image/jpg'}, {io: file8, filename: " ", content_type: 'image/jpg'}, {io: file9, filename: " ", content_type: 'image/jpg'}])

user4.save!

puts "user created"

file10 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582638787/u9fhhkoycfvci90usute.jpg")
file11 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582638787/u9fhhkoycfvci90usute.jpg")
file12 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582638787/u9fhhkoycfvci90usute.jpg")

user5 = User.new(email:"kikou@nomail.com", name: "John", password: "coucou", description: "je suis le plus drole hehe", age:25, height: "180", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "homo")
user5.photos.attach([{io: file10, filename: " ", content_type: 'image/jpg'}, {io: file11, filename: " ", content_type: 'image/jpg'}, {io: file12, filename: " ", content_type: 'image/jpg'}])

user5.save!

puts "user created"

file13 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582639195/mqra2ye6msbzskc66swm.jpg")
file14 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582639195/mqra2ye6msbzskc66swm.jpg")
file15 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582639195/mqra2ye6msbzskc66swm.jpg")

user6 = User.new(email:"marie@nomail.com", name: "Marie", password: "coucou", description: "la plus intello", age:28, height: "160", smoker: true,  drinker: true, sex: "Femme", sexual_orientation: "hetero")
user6.photos.attach([{io: file13, filename: " ", content_type: 'image/jpg'}, {io: file14, filename: " ", content_type: 'image/jpg'}, {io: file15, filename: " ", content_type: 'image/jpg'}])

user6.save!

puts "user created"

# 1.times do
#   user = User.new(
#     password: "123456",
#     name: Faker::Name.first_name ,
#     email: Faker::Internet.email(domain: 'nomail'),
#     description: Faker::Quotes::Shakespeare.hamlet_quote,
#     age: rand(18..100).round,
#     height: rand(140..210).round,
#     smoker: true,
#     drinker: true,
#     sex: SEX.sample,
#     sexual_orientation: SEXUAL_ORIENTATION.sample)
#   user.photos.attach([{io: file13, filename: " ", content_type: 'image/jpg'}, {io: file14, filename: " ", content_type: 'image/jpg'}, {io: file15, filename: " ", content_type: 'image/jpg'}])
#   user.save!
#   puts "user created!"
# end

Availability.create(
  user_id: 1,
  afterwork: false,
  diner_time: true,
  days: "lundi, mercredi, vendredi"
  )
Availability.create(
  user_id: 2,
  afterwork: true,
  diner_time: true,
  days: "lundi, dimanche"
  )
Availability.create(
  user_id: 3,
  afterwork: true,
  diner_time: false,
  days: "samedi"
  )
Availability.create(
  user_id: 4,
  afterwork: false,
  diner_time: true,
  days: "lundi, mardi, mercredi, jeudi, vendredi"
  )
Availability.create(
  user_id: 5,
  afterwork: true,
  diner_time: true,
  days: "lundi"
  )
Availability.create(
  user_id: 6,
  afterwork: true,
  diner_time: true,
  days: "lundi, mercredi, vendredi"
  )

url = "https://www.timeout.fr/paris/bar/100-meilleurs-bars"
response = open(url).read
html_doc = Nokogiri::HTML(open(url), nil, 'utf-8')

html_doc.search('.card-content').each do |card|
  link = card.search("a").map{|anchor| anchor["href"]}.first
  next if link.nil?
  if link.match?(/^https/)
    link2 = link
  else
    link2 = "https://www.timeout.fr#{link}"
  end

  html2_doc = Nokogiri::HTML(open(link2), nil, 'utf-8')
  global_information = html2_doc.search('.listing_details td')
  bar_address = global_information
    .text.split("\n")[(1..3)]
    .map{|element| element.strip}
    .join(", ")

  bar_name =html2_doc.search('h1').text

  bar_category = html2_doc.search('.flag--sub_category').text.split(' ').last

  if html2_doc.search('.image_wrapper img').attribute("src").nil?
    bar_photo = "https://s3.us-east-2.amazonaws.com/tales-prod-mediabucket-1w7ck12fqo2qd/assets/images/2017/06/bfPNMr_dAlEn_660x0_mtdhGWCw.jpg"
  else
    bar_photo = html2_doc.search('.image_wrapper img').attribute("src").value
  end


  bar_opening_time = ["18h"]

  bar_url = link


  bar = Place.new(
    name: bar_name,
    address: bar_address,
    category: bar_category,
    photo: bar_photo,
    opening_time: bar_opening_time,
    url: bar_url
    )
  if bar.valid?
    bar.save!
  else
    puts bar.errors.messages
  end

  puts "#{bar_name} created!"
end




#  Like.create(user: User.first, liked_user: User.last)

# Like.create(user: User.second, liked_user: User.last)



#    Like.create(user: User.third, liked_user: User.fourth)




Meeting.create(user1_id: User.first[:id], user2_id: User.last[:id], place_id: Place.first[:id], date_time: Date.new)
Like.create(user_id: User.first[:id], liked_user_id: User.last[:id])

