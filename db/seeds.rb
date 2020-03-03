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

SEX = ["Homme", "Femme"]
SEXUAL_ORIENTATION =["hetero", "homo", "bi"]

days = User::DAYS

file1 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582638787/u9fhhkoycfvci90usute.jpg")
file2 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582639195/mqra2ye6msbzskc66swm.jpg")
user1 = User.new(email:"mama@nomail.com", name: "Marine", password: "coucou", description: "Coucou, je cherche un BG :) swipe à droite si tu corresponds à cette description", age:25, height: "165", smoker: true,  drinker: true, sex: "Femme", sexual_orientation: "bi", position: "16 Villa Gaudelet, 75011 Paris")
user1.photos.attach([{io: file1, filename: " ", content_type: 'image/jpg'}, {io: file2, filename: " ", content_type: 'image/jpg'}])
user1.save!
puts "user created"


file3 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583166333/IMG_20200302_172427_rtafov.jpg")
file4 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583166019/gbrmaqcou91smw7hhxpz.jpg")
user2 = User.new(email:"cece@nomail.com", name: "Cecile", password: "coucou", description: "je suis une BG", age:27, height: "155", smoker: false,  drinker: true, sex: "Femme", sexual_orientation: "bi", position: "16 Villa Gaudelet, 75011 Paris")
user2.photos.attach([{io: file3, filename: " ", content_type: 'image/jpg'}, {io: file4, filename: " ", content_type: 'image/jpg'}])
user2.save!
puts "user created"

file5 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582830632/gpdcoljqczcb9jtww3oz.jpg")
file6 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582830621/xa0rpalohgpycjfipltp.jpg")
user3 = User.new(email:"roro@nomail.com", name: "Roberta", password: "coucou", description: "match pour me découvrir", age:23, height: "175", smoker: true,  drinker: false, sex: "Femme", sexual_orientation: "bi", position: "16 Villa Gaudelet, 75011 Paris")
user3.photos.attach([{io: file5, filename: " ", content_type: 'image/jpg'}, {io: file6, filename: " ", content_type: 'image/jpg'}])
user3.save!
puts "user created"

file7 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583162595/IMG_6609_lzseja.jpg")
file8 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583162595/IMG_6609_lzseja.jpg")
user4 = User.new(email:"jessico@nomail.com", name: "Jessica", password: "coucou", description: "hey there", age:25, height: "165", smoker: true,  drinker: true, sex: "Femme", sexual_orientation: "bi", position: "16 Villa Gaudelet, 75011 Paris")
user4.photos.attach([{io: file7, filename: " ", content_type: 'image/jpg'}, {io: file8, filename: " ", content_type: 'image/jpg'}])
user4.save!
puts "user created"

file10 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583165249/vif1ppa7jnadbq3zkmz5.jpg")
file11 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583165355/IMG_20200302_170821_wyf0kg.jpg")
file43 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583165362/IMG_20200302_170604_y8qzof.jpg")
user5 = User.new(email:"kikou@nomail.com", name: "Claire", password: "coucou", description: "je kiffe les voyages, aventurières llalalala", age:26, height: "170", smoker: true,  drinker: true, sex: "Femme", sexual_orientation: "bi", position: "16 Villa Gaudelet, 75011 Paris")
user5.photos.attach([{io: file10, filename: " ", content_type: 'image/jpg'}, {io: file11, filename: " ", content_type: 'image/jpg'}, {io: file43, filename: " ", content_type: 'image/jpg'}])
user5.save!
puts "user created"

file12 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582883056/wo0wwtm8mbx7p3rzbkhq.jpg")
file13 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582830210/kuvjcxxda1bwvajmzwt8.jpg")
user6 = User.new(email:"marie@nomail.com", name: "Marie", password: "coucou", description: "la plus intello", age:28, height: "160", smoker: true,  drinker: true, sex: "Femme", sexual_orientation: "bi", position: "16 Villa Gaudelet, 75011 Paris")
user6.photos.attach([{io: file12, filename: " ", content_type: 'image/jpg'}, {io: file13, filename: " ", content_type: 'image/jpg'}])
user6.save!
puts "user created"

file14 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582830055/ab7to3fdfkr8papwvusv.jpg")
file15 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582830071/irz8ub780uwrdivibzzm.jpg")
user7 = User.new(email:"jf@nomail.com", name: "jean-francoise", password: "coucou", description: "je suis trop BG", age:25, height: "180", smoker: true,  drinker: true, sex: "Femme", sexual_orientation: "bi", position: "16 Villa Gaudelet, 75011 Paris")
user7.photos.attach([{io: file14, filename: " ", content_type: 'image/jpg'}, {io: file15, filename: " ", content_type: 'image/jpg'}])
user7.save!
puts "user created"

file16 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582722565/d3wkilfzavnix29zvfyu.jpg")
file17 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582887380/t9yxtzwoe5byswv3gofl.jpg")
user8 = User.new(email:"j@nomail.com", name: "Gigi", password: "coucou", description: "je suis une BG", age:27, height: "170", smoker: false,  drinker: true, sex: "Femme", sexual_orientation: "bi", position: "16 Villa Gaudelet, 75011 Paris")
user8.photos.attach([{io: file16, filename: " ", content_type: 'image/jpg'}, {io: file17, filename: " ", content_type: 'image/jpg'}])
user8.save!
puts "user created"

file18 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582829837/gkouptbfltdbhf6uihrg.jpg")
file19= URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582638274/m6bh8rcgx9nus7kcujs7.jpg")
user9 = User.new(email:"laulau@nomail.com", name: "Laura", password: "coucou", description: "match pour me découvrir", age:23, height: "175", smoker: true,  drinker: false, sex: "Femme", sexual_orientation: "bi", position: "16 Villa Gaudelet, 75011 Paris")
user9.photos.attach([{io: file18, filename: " ", content_type: 'image/jpg'}, {io: file19, filename: " ", content_type: 'image/jpg'}])
user9.save!
puts "user created"


file20 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582722581/vwfjknwxz8rqbt2wkizp.jpg")
file21 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582883350/ivbc51oerfhtuc9agqrx.jpg")
user10 = User.new(email:"no@nomail.com", name: "Béa", password: "coucou", description: "hellooooo", age:25, height: "185", smoker: true,  drinker: true, sex: "Femme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user10.photos.attach([{io: file20, filename: " ", content_type: 'image/jpg'}, {io: file21, filename: " ", content_type: 'image/jpg'}])
user10.save!
puts "user created"

file40 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582883759/iz8j1v3z2mgcbbprl4nu.jpg")
file41 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582883764/e7hmglpdbky73vzwzk0j.jpg")
user11 = User.new(email:"jean@nomail.com", name: "Jean-mi", password: "coucou", description: "hellooooo", age:25, height: "195", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user11.photos.attach([{io: file40, filename: " ", content_type: 'image/jpg'}, {io: file41, filename: " ", content_type: 'image/jpg'}])
user11.save!
puts "user created"

file24 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582885108/qxhmhoflrhibqbgyz6lj.jpg")
file25 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582885117/xz3ua4pflts3xlmlnmot.jpg")
user12 = User.new(email:"joack@nomail.com", name: "Joachim", password: "coucou", description: "hellooooo", age:25, height: "175", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user12.photos.attach([{io: file24, filename: " ", content_type: 'image/jpg'}, {io: file25, filename: " ", content_type: 'image/jpg'}])
user12.save!
puts "user created"

file26 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582884957/gepetkjz6un0wbcaxixb.jpg")
file27 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582884963/ob86o6gvvlvuuj6mqwxn.jpg")
user13 = User.new(email:"seb@nomail.com", name: "Sébastien", password: "coucou", description: "hellooooo", age:25, height: "195", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user13.photos.attach([{io: file26, filename: " ", content_type: 'image/jpg'}, {io: file27, filename: " ", content_type: 'image/jpg'}])
user13.save!
puts "user created"

file28 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583167038/bruce-mars-AndE50aaHn4-unsplash_ablpun.jpg")
file29 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583167768/bruce-mars-y5rArUefkgM-unsplash_c9kypo.jpg")
user14 = User.new(email:"koukou@nomail.com", name: "Bruce", password: "coucou", description: "hellooooo", age:29, height: "190", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user14.photos.attach([{io: file28, filename: " ", content_type: 'image/jpg'}, {io: file29, filename: " ", content_type: 'image/jpg'}])
user14.save!
puts "user created"

file30 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583162894/DSC_4430-1_Thanh-an_Le_qlwgdp.jpg")
file31 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583162959/lny3z90h3tvc57nodxl1.png")
user15 = User.new(email:"thanan@nomail.com", name: "Than-An", password: "coucou", description: "hellooooo", age:25, height: "165", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user15.photos.attach([{io: file30, filename: " ", content_type: 'image/jpg'}, {io: file31, filename: " ", content_type: 'image/jpg'}])
user15.save!
puts "user created"

file32 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583155639/nd3wdy3isfy4u9o34m60njgvw17k.jpg")
file33 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583155636/m2dbtbvznw9x1r97m7be17nh82ho.jpg")
user16 = User.new(email:"doudou@nomail.com", name: "Edouard", password: "coucou", description: "hellooooo", age:30, height: "180", smoker: false,  drinker: true, sex: "Homme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user16.photos.attach([{io: file32, filename: " ", content_type: 'image/jpg'}, {io: file33, filename: " ", content_type: 'image/jpg'}])
user16.save!
puts "user created"

file34 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583162789/DSC_4457-1_Marc_Merle_h6gjen.jpg")
file35 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583164246/IMG_4698_mvgcor.jpg")
user17 = User.new(email:"marco@nomail.com", name: "Marc", password: "coucou", description: "hellooooo", age:30, height: "175", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user17.photos.attach([{io: file34, filename: " ", content_type: 'image/jpg'}, {io: file35, filename: " ", content_type: 'image/jpg'}])
user17.save!
puts "user created"

file36 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582884162/dfhc1ldspvrrkttopiep.jpg")
file37 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582884168/i8xpqtu05hqkzq70anrq.jpg")
user18 = User.new(email:"je@nomail.com", name: "Jean-Eude", password: "coucou", description: "hellooooo", age:25, height: "175", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user18.photos.attach([{io: file36, filename: " ", content_type: 'image/jpg'}, {io: file37, filename: " ", content_type: 'image/jpg'}])
user18.save!
puts "user created"

file38 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582638612/pqqxbthn0bzqtilzsogq.jpg")
file39 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1582638775/rbzkt3r5tpvupgxqbbhe.jpg")
user19 = User.new(email:"michmich@nomail.com", name: "Michou", password: "coucou", description: "hellooooo", age:25, height: "180", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user19.photos.attach([{io: file38, filename: " ", content_type: 'image/jpg'}, {io: file39, filename: " ", content_type: 'image/jpg'}])
user19.save!
puts "user created"

file22 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583164597/qy2uvmqfybaxdwk1livk.jpg")
file23 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583164582/IMG_20200302_165429_klxzly.jpg")
user20 = User.new(email:"babou@nomail.com", name: "Baptiste", password: "coucou", description: "Hello, je suis super sympa hyper BG et très intelligent, swipe à droite pour me découvrir", age:25, height: "180", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user20.photos.attach([{io: file22, filename: " ", content_type: 'image/jpg'}, {io: file23, filename: " ", content_type: 'image/jpg'}])
user20.save!
puts "user created"

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

Meeting.create(user1_id: User.first[:id], user2_id: User.last[:id], place_id: Place.first[:id], start_time: Date.new, start_hour: Date.new)
Like.create(user_id: User.first[:id], liked_user_id: User.last[:id])
