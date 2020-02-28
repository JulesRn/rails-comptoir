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

file1 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582638787/u9fhhkoycfvci90usute.jpg")
file2 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582639195/mqra2ye6msbzskc66swm.jpg")
user1 = User.new(email:"mama@nomail.com", name: "Marine", password: "coucou", description: "Coucou, je cherche un BG :) swipe à droite si tu corresponds à cette description", age:25, height: "165", smoker: true,  drinker: true, sex: "Femme", sexual_orientation: "bi")
user1.photos.attach([{io: file1, filename: " ", content_type: 'image/jpg'}, {io: file2, filename: " ", content_type: 'image/jpg'}])
user1.save!
puts "user created"


file3 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582830793/xlo4g7dl2sfe5iffjscw.jpg")
file4 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582830786/uqv2sjnl33rhk1rood7v.jpg")
user2 = User.new(email:"popo@nomail.com", name: "Popo", password: "coucou", description: "je suis une BG", age:27, height: "155", smoker: false,  drinker: true, sex: "Femme", sexual_orientation: "bi")
user2.photos.attach([{io: file3, filename: " ", content_type: 'image/jpg'}, {io: file4, filename: " ", content_type: 'image/jpg'}])
user2.save!
puts "user created"

file5 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582830632/gpdcoljqczcb9jtww3oz.jpg")
file6 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582830621/xa0rpalohgpycjfipltp.jpg")
user3 = User.new(email:"roro@nomail.com", name: "Roberta", password: "coucou", description: "match pour me découvrir", age:23, height: "175", smoker: true,  drinker: false, sex: "Femme", sexual_orientation: "bi")
user3.photos.attach([{io: file5, filename: " ", content_type: 'image/jpg'}, {io: file6, filename: " ", content_type: 'image/jpg'}])
user3.save!
puts "user created"

file7 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582830392/ohztch5tyfbxvbr3bpy0.jpg")
file8 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582830398/q3hg5axmcp3gv7e0tztx.jpg")
user4 = User.new(email:"josephine@nomail.com", name: "Jo", password: "coucou", description: "hey there", age:25, height: "165", smoker: true,  drinker: true, sex: "Femme", sexual_orientation: "bi")
user4.photos.attach([{io: file7, filename: " ", content_type: 'image/jpg'}, {io: file8, filename: " ", content_type: 'image/jpg'}])
user4.save!
puts "user created"

file10 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582883336/jxtfuljaebdnnael51cr.jpg")
file11 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582887308/zhjwgmujprznuvmlftag.jpg")
user5 = User.new(email:"kikou@nomail.com", name: "Johanna", password: "coucou", description: "je suis le plus drole hehe", age:25, height: "180", smoker: true,  drinker: true, sex: "Femme", sexual_orientation: "bi")
user5.photos.attach([{io: file10, filename: " ", content_type: 'image/jpg'}, {io: file11, filename: " ", content_type: 'image/jpg'}])
user5.save!
puts "user created"

file12 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582883056/wo0wwtm8mbx7p3rzbkhq.jpg")
file13 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582830210/kuvjcxxda1bwvajmzwt8.jpg")
user6 = User.new(email:"marie@nomail.com", name: "Marie", password: "coucou", description: "la plus intello", age:28, height: "160", smoker: true,  drinker: true, sex: "Femme", sexual_orientation: "bi")
user6.photos.attach([{io: file12, filename: " ", content_type: 'image/jpg'}, {io: file13, filename: " ", content_type: 'image/jpg'}])
user6.save!
puts "user created"

file14 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582830055/ab7to3fdfkr8papwvusv.jpg")
file15 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582830071/irz8ub780uwrdivibzzm.jpg")
user7 = User.new(email:"jf@nomail.com", name: "jean-francoise", password: "coucou", description: "je suis trop BG", age:25, height: "180", smoker: true,  drinker: true, sex: "Femme", sexual_orientation: "bi")
user7.photos.attach([{io: file14, filename: " ", content_type: 'image/jpg'}, {io: file15, filename: " ", content_type: 'image/jpg'}])
user7.save!
puts "user created"

file16 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582722565/d3wkilfzavnix29zvfyu.jpg")
file17 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582887380/t9yxtzwoe5byswv3gofl.jpg")
user8 = User.new(email:"j@nomail.com", name: "Gigi", password: "coucou", description: "je suis une BG", age:27, height: "170", smoker: false,  drinker: true, sex: "Femme", sexual_orientation: "bi")
user8.photos.attach([{io: file16, filename: " ", content_type: 'image/jpg'}, {io: file17, filename: " ", content_type: 'image/jpg'}])
user8.save!
puts "user created"

file18 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582829837/gkouptbfltdbhf6uihrg.jpg")
file19= URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582638274/m6bh8rcgx9nus7kcujs7.jpg")
user9 = User.new(email:"laulau@nomail.com", name: "Laura", password: "coucou", description: "match pour me découvrir", age:23, height: "175", smoker: true,  drinker: false, sex: "Femme", sexual_orientation: "bi")
user9.photos.attach([{io: file18, filename: " ", content_type: 'image/jpg'}, {io: file19, filename: " ", content_type: 'image/jpg'}])
user9.save!
puts "user created"


file20 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582722581/vwfjknwxz8rqbt2wkizp.jpg")
file21 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582883350/ivbc51oerfhtuc9agqrx.jpg")
user10 = User.new(email:"no@nomail.com", name: "Béa", password: "coucou", description: "hellooooo", age:25, height: "185", smoker: true,  drinker: true, sex: "Femme", sexual_orientation: "bi")
user10.photos.attach([{io: file20, filename: " ", content_type: 'image/jpg'}, {io: file21, filename: " ", content_type: 'image/jpg'}])
user10.save!
puts "user created"

file40 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582883759/iz8j1v3z2mgcbbprl4nu.jpg")
file41 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582883764/e7hmglpdbky73vzwzk0j.jpg")
user11 = User.new(email:"jean@nomail.com", name: "Jean-mi", password: "coucou", description: "hellooooo", age:25, height: "195", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi")
user11.photos.attach([{io: file40, filename: " ", content_type: 'image/jpg'}, {io: file41, filename: " ", content_type: 'image/jpg'}])
user11.save!
puts "user created"

file24 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582885108/qxhmhoflrhibqbgyz6lj.jpg")
file25 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582885117/xz3ua4pflts3xlmlnmot.jpg")
user12 = User.new(email:"joack@nomail.com", name: "Joachim", password: "coucou", description: "hellooooo", age:25, height: "175", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi")
user12.photos.attach([{io: file24, filename: " ", content_type: 'image/jpg'}, {io: file25, filename: " ", content_type: 'image/jpg'}])
user12.save!
puts "user created"

file26 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582884957/gepetkjz6un0wbcaxixb.jpg")
file27 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582884963/ob86o6gvvlvuuj6mqwxn.jpg")
user13 = User.new(email:"seb@nomail.com", name: "Sébastien", password: "coucou", description: "hellooooo", age:25, height: "195", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi")
user13.photos.attach([{io: file26, filename: " ", content_type: 'image/jpg'}, {io: file27, filename: " ", content_type: 'image/jpg'}])
user13.save!
puts "user created"

file28 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582884817/usm5pzrkygtrt64b5uaf.jpg")
file29 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582884813/nybmiczhaejnj2hzsrnn.jpg")
user14 = User.new(email:"koukou@nomail.com", name: "Karim", password: "coucou", description: "hellooooo", age:25, height: "190", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi")
user14.photos.attach([{io: file28, filename: " ", content_type: 'image/jpg'}, {io: file29, filename: " ", content_type: 'image/jpg'}])
user14.save!
puts "user created"

file30 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582884669/zn0p1qib0smn0xqdk4hx.jpg")
file31 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582884663/jsigtubtdee49ydth9un.jpg")
user15 = User.new(email:"toutou@nomail.com", name: "Thomas", password: "coucou", description: "hellooooo", age:25, height: "165", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi")
user15.photos.attach([{io: file30, filename: " ", content_type: 'image/jpg'}, {io: file31, filename: " ", content_type: 'image/jpg'}])
user15.save!
puts "user created"

file32 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582884489/rdks5nvxu7zsmn8e3dyi.jpg")
file33 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582884493/yxsbi8esmjuqqbjkpo7u.jpg")
user16 = User.new(email:"thibthib@nomail.com", name: "Thibault", password: "coucou", description: "hellooooo", age:25, height: "185", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi")
user16.photos.attach([{io: file32, filename: " ", content_type: 'image/jpg'}, {io: file33, filename: " ", content_type: 'image/jpg'}])
user16.save!
puts "user created"

file34 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582884335/vawxtvi20gdkmesymrpw.jpg")
file35 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582884341/sfeodc8wruxgsivmfnrt.jpg")
user17 = User.new(email:"toto@nomail.com", name: "Tommy", password: "coucou", description: "hellooooo", age:25, height: "165", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi")
user17.photos.attach([{io: file34, filename: " ", content_type: 'image/jpg'}, {io: file35, filename: " ", content_type: 'image/jpg'}])
user17.save!
puts "user created"

file36 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582884162/dfhc1ldspvrrkttopiep.jpg")
file37 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582884168/i8xpqtu05hqkzq70anrq.jpg")
user18 = User.new(email:"je@nomail.com", name: "Jean-Eude", password: "coucou", description: "hellooooo", age:25, height: "175", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi")
user18.photos.attach([{io: file36, filename: " ", content_type: 'image/jpg'}, {io: file37, filename: " ", content_type: 'image/jpg'}])
user18.save!
puts "user created"

file38 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582638612/pqqxbthn0bzqtilzsogq.jpg")
file39 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582638775/rbzkt3r5tpvupgxqbbhe.jpg")
user19 = User.new(email:"michmich@nomail.com", name: "Michou", password: "coucou", description: "hellooooo", age:25, height: "180", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi")
user19.photos.attach([{io: file38, filename: " ", content_type: 'image/jpg'}, {io: file39, filename: " ", content_type: 'image/jpg'}])
user19.save!
puts "user created"

file22 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582885321/kdcxdnd5twkugbd8bikv.jpg")
file23 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582885328/wy6bfhculax1xuv4rya0.jpg")
user20 = User.new(email:"babou@nomail.com", name: "Baptiste", password: "coucou", description: "Hello, je suis super sympa hyper BG et très intelligent, swipe à droite pour me découvrir", age:25, height: "180", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi")
user20.photos.attach([{io: file22, filename: " ", content_type: 'image/jpg'}, {io: file23, filename: " ", content_type: 'image/jpg'}])
user20.save!
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


Meeting.create(user1_id: User.first[:id], user2_id: User.last[:id], place_id: Place.first[:id], start_time: Date.new, start_hour: Date.new)
Like.create(user_id: User.first[:id], liked_user_id: User.last[:id])

