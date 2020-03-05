# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "nokogiri"
require "open-uri"
Feedback.destroy_all
Availability.destroy_all
Like.destroy_all
Unlike.destroy_all
Lapin.destroy_all
Feedback.destroy_all
Meeting.destroy_all
User.destroy_all
Place.destroy_all

SEX = ["Homme", "Femme"]
SEXUAL_ORIENTATION =["hetero", "homo", "bi"]

days = User::DAYS

file28 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583246686/IMG_6778_i39x0k.jpg")
file29 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583246700/IMG_6776_lqzfs2.jpg")
user13 = User.new(email:"fabien@nomail.com", name: "Fabien", password: "coucou", description: "Ton père ne bosserait pas chez Nintendo? Vu ton corps de DS ça semblerait logique", age:25, height: "180", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user13.photos.attach([{io: file28, filename: " ", content_type: 'image/jpg'}, {io: file29, filename: " ", content_type: 'image/jpg'}])
user13.save!
puts "user created"

file38 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583245634/IMG_6753_ggkn4j.jpg")
file39 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583246433/IMG_6749_xtxfc5.jpg")
user17 = User.new(email:"hugo@nomail.com", name: "Hugo", password: "coucou", description: "Top 2 au wagon, Ma nouvelle résolution 2020? 1920 x 1080. Si tu partages mon humour, tu sais ce qu’il te reste à faire.", age:28, height: "180", smoker: false,  drinker: true, sex: "Homme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user17.photos.attach([{io: file38, filename: " ", content_type: 'image/jpg'}, {io: file39, filename: " ", content_type: 'image/jpg'}])
user17.save!
puts "user created"

file34 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583247925/WhatsApp_Image_2020-03-03_at_15.56.54_1_qygqjp.jpg")
file35 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583164246/IMG_4698_mvgcor.jpg")
user15 = User.new(email:"marc@nomail.com", name: "Marc", password: "coucou", description: "J’aime figma, c’est ma passion. Mais par-dessus tout je connais les bar de Paris et leur playlist alors come on bb tu ne seras plus jamais perdu!", age:30, height: "180", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user15.photos.attach([{io: file34, filename: " ", content_type: 'image/jpg'}, {io: file35, filename: " ", content_type: 'image/jpg'}])
user15.save!
puts "user created"

file7 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583162595/IMG_6609_lzseja.jpg")
file8 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583249310/WhatsApp_Image_2020-03-03_at_16.28.12_ua3nbe.jpg")
user4 = User.new(email:"jessica@nomail.com", name: "Jessica", password: "coucou", description: "Instagrammeuse pro, Ma vie c’est les plantes et les selfies. Likes moi pour plus de folie in your life! Yolo", age:25, height: "170", smoker: false,  drinker: false, sex: "Femme", sexual_orientation: "bi", position: "16 Villa Gaudelet, 75011 Paris")
user4.photos.attach([{io: file7, filename: " ", content_type: 'image/jpg'}, {io: file8, filename: " ", content_type: 'image/jpg'}])
user4.save!
puts "user created"

file16 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583248855/WhatsApp_Image_2020-03-03_at_16.20.15_ypqtuz.jpg")
file17 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583248845/WhatsApp_Image_2020-03-03_at_16.20.15_1_rfee72.jpg")
user7 = User.new(email:"zelda@nomail.com", name: "Zelda", password: "coucou", description: "De quelle couleur sont tes yeux ? ;) #1292F4 et toi ?", age:27, height: "170", smoker: false,  drinker: true, sex: "Femme", sexual_orientation: "bi", position: "16 Villa Gaudelet, 75011 Paris")
user7.photos.attach([{io: file16, filename: " ", content_type: 'image/jpg'}, {io: file17, filename: " ", content_type: 'image/jpg'}])
user7.save!
puts "user created"

file3 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583166333/IMG_20200302_172427_rtafov.jpg")
file4 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583166019/gbrmaqcou91smw7hhxpz.jpg")
user2 = User.new(email:"cecile@nomail.com", name: "Cécile", password: "coucou", description: "Développeuse pro, si tu veux devenir le contrôleur de ma view (les vrais comprendront) alors tu es fait pour moi!", age:22, height: "170", smoker: true,  drinker: true, sex: "Femme", sexual_orientation: "bi", position: "16 Villa Gaudelet, 75011 Paris")
user2.photos.attach([{io: file3, filename: " ", content_type: 'image/jpg'}, {io: file4, filename: " ", content_type: 'image/jpg'}])
user2.save!
puts "user created"

file1 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583245905/FullSizeRender_ptb8tj.jpg")
file2 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583245885/897C87D5-15DA-49AF-AA13-AD763B90CA3E_do1gps.jpg")
file46 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583245869/14F4356A-2127-4A58-8747-79FFE3D203EF_yb1rqr.jpg")
user1 = User.new(email:"pamela@nomail.com", name: "Pamela", password: "coucou", description: "J’adore clubber et surtout le karaoké. Si toi aussi tu aimes pousser la chansonnette, Rencontre moi pour découvrir la voie.", age:28, height: "170", smoker: true,  drinker: true, sex: "Femme", sexual_orientation: "bi", position: "16 Villa Gaudelet, 75011 Paris")
user1.photos.attach([{io: file1, filename: " ", content_type: 'image/jpg'}, {io: file2, filename: " ", content_type: 'image/jpg'}, {io: file46, filename: " ", content_type: 'image/jpg'}])
user1.save!
puts "user created"

file5 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583246911/IMG_6765_oaefr2.jpg")
file6 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583246895/IMG_6764_c91js7.jpg")
user3 = User.new(email:"ashley@nomail.com", name: "Ashley", password: "coucou", description: "Ne sais pas parler anglais ! La vie est un flocon d’espoir.", age:21, height: "170", smoker: true,  drinker: false, sex: "Femme", sexual_orientation: "bi", position: "16 Villa Gaudelet, 75011 Paris")
user3.photos.attach([{io: file5, filename: " ", content_type: 'image/jpg'}, {io: file6, filename: " ", content_type: 'image/jpg'}])
user3.save!
puts "user created"

file10 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583165249/vif1ppa7jnadbq3zkmz5.jpg")
file11 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583165355/IMG_20200302_170821_wyf0kg.jpg")
file43 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583165362/IMG_20200302_170604_y8qzof.jpg")
user5 = User.new(email:"claire@nomail.com", name: "Claire", password: "coucou", description: "Un geek ne descend pas du métro. Il libère la RAM...", age:26, height: "170", smoker: false,  drinker: true, sex: "Femme", sexual_orientation: "bi", position: "16 Villa Gaudelet, 75011 Paris")
user5.photos.attach([{io: file10, filename: " ", content_type: 'image/jpg'}, {io: file11, filename: " ", content_type: 'image/jpg'}, {io: file43, filename: " ", content_type: 'image/jpg'}])
user5.save!
puts "user created"

file14 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583249022/IMG_4769_juhnqe.jpg")
user6 = User.new(email:"jm@nomail.com", name: "Jean-Mi", password: "coucou", description: "Je te laisserai piquer mes frites si tu aimes ma brioche 😜.", age:30, height: "180", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi", position: "16 Villa Gaudelet, 75011 Paris")
user6.photos.attach([{io: file14, filename: " ", content_type: 'image/jpg'}])
user6.save!
puts "user created"

file18 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583247609/WhatsApp_Image_2020-03-03_at_15.56.55_giv1th.jpg")
file19= URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583247604/WhatsApp_Image_2020-03-03_at_15.56.55_1_ouagtg.jpg")
user8 = User.new(email:"eugenie@nomail.com", name: "Eugénie", password: "coucou", description: "L’amour c’est comme le jardinage, ça commence par une pelle et ça fini par un râteau", age:29, height: "170", smoker: false,  drinker: true, sex: "Femme", sexual_orientation: "bi", position: "16 Villa Gaudelet, 75011 Paris")
user8.photos.attach([{io: file18, filename: " ", content_type: 'image/jpg'}, {io: file19, filename: " ", content_type: 'image/jpg'}])
user8.save!
puts "user created"

file20 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583247462/WhatsApp_Image_2020-03-03_at_15.56.57_s6qbed.jpg")
file21 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583247468/WhatsApp_Image_2020-03-03_at_15.56.56_xdddml.jpg")
user9 = User.new(email:"diane@nomail.com", name: "Diane", password: "coucou", description: "Ton nom ne serait pas Google? tu es tout ce que je recherche !", age:25, height: "180", smoker: true,  drinker: true, sex: "Femme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user9.photos.attach([{io: file20, filename: " ", content_type: 'image/jpg'}, {io: file21, filename: " ", content_type: 'image/jpg'}])
user9.save!
puts "user created"

file40 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583247478/WhatsApp_Image_2020-03-03_at_15.56.56_1_gllmta.jpg")
file41 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583246341/IMG_6773_ojg8sx.jpg")
user10 = User.new(email:"mathieu@nomail.com", name: "Mathieu", password: "coucou", description: "Marié depuis quelques années, je suis ici juste pour découvrir cette appli qui a un design incroyable!", age:30, height: "190", smoker: false,  drinker: true, sex: "Homme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user10.photos.attach([{io: file40, filename: " ", content_type: 'image/jpg'}, {io: file41, filename: " ", content_type: 'image/jpg'}])
user10.save!
puts "user created"

file24 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583247037/IMG_6770_ywj4jt.jpg")
file25 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583251942/WhatsApp_Image_2020-03-03_at_15.56.56_3_grgtkb.jpg")
user11 = User.new(email:"thomasr@nomail.com", name: "Thomas", password: "coucou", description: "Le foot c’est ma passion. Même si je me prends des petit ponts ( cimer Karim). Ps : Lapin garanti si soir de match", age:25, height: "180", smoker: false,  drinker: true, sex: "Homme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user11.photos.attach([{io: file24, filename: " ", content_type: 'image/jpg'}, {io: file25, filename: " ", content_type: 'image/jpg'}])
user11.save!
puts "user created"

file26 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583247880/WhatsApp_Image_2020-03-03_at_15.56.54_poqg4l.jpg")
file27 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583247030/IMG_6758_a3oxws.jpg")
user12 = User.new(email:"alex@nomail.com", name: "Alex", password: "coucou", description: "Passion code et blague!Comment fait-on pour arrêter les pleurs d’un geek?
– On le console ", age:30, height: "185", smoker: false,  drinker: true, sex: "Homme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user12.photos.attach([{io: file26, filename: " ", content_type: 'image/jpg'}, {io: file27, filename: " ", content_type: 'image/jpg'}])
user12.save!
puts "user created"

file30 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583245714/IMG_6747_c4fseg.jpg")
file31 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583245732/IMG_6748_hm2j2v.jpg")
user14 = User.new(email:"thanan@nomail.com", name: "Thanh-An", password: "coucou", description: "Le roi de la musique. Si tu souhaites que je te joue des airs de foly toute la soirée deviens  ma Juliette je serai Roméo sous ton balcon. Kiss", age:25, height: "180", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user14.photos.attach([{io: file30, filename: " ", content_type: 'image/jpg'}, {io: file31, filename: " ", content_type: 'image/jpg'}])
user14.save!
puts "user created"

file36 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583246471/IMG_6762_nvdx2e.jpg")
file37 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583247596/WhatsApp_Image_2020-03-03_at_15.56.55_2_xki5o1.jpg")
user16 = User.new(email:"thomass@nomail.com", name: "Thomas", password: "coucou", description: "On ne dit pas : un geek tombe malade.On dit : il attrape un virus.", age:25, height: "180", smoker: true,  drinker: true, sex: "Homme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user16.photos.attach([{io: file36, filename: " ", content_type: 'image/jpg'}, {io: file37, filename: " ", content_type: 'image/jpg'}])
user16.save!
puts "user created"

file22 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583164597/qy2uvmqfybaxdwk1livk.jpg")
file23 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1583164582/IMG_20200302_165429_klxzly.jpg")
user18 = User.new(email:"baptiste@nomail.com", name: "Baptiste", password: "coucou", description: "Choisis-moi pour qu’on puisse se séparer. Ma dernière rupture a été difficile, mais je ferais tout pour que la prochaine rupture soit la bonne. J’aime regarder le sucre fondre dans mon café et les dimanches pluvieux", age:27, height: "180", smoker: false,  drinker: true, sex: "Homme", sexual_orientation: "bi", position: "6 avenue de la République, 75011 Paris")
user18.photos.attach([{io: file22, filename: " ", content_type: 'image/jpg'}, {io: file23, filename: " ", content_type: 'image/jpg'}])
user18.save!
puts "user created"

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

User.all.each do |user|
  Like.create(user: user, liked_user: User.last)
end

Like.where(user: [user18, user16]).destroy_all

