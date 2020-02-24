# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
<<<<<<< HEAD
require "nokogiri"
require "open-uri"
bars = []
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



  # Element qui marchent
  #
  html2_doc = Nokogiri::HTML(open(link2), nil, 'utf-8')
  global_information = html2_doc.search('.listing_details td')
  bar_address = global_information
    .text.split("\n")[(1..3)]
    .map{|element| element.strip}
    .join(", ")

  bar_name =html2_doc.search('h1').text

  bar_category = html2_doc.search('.flag--sub_category').text.split(' ').last

  bar_photo = html2_doc.search('.image_wrapper img').attribute("src").value



  # LABORATOIRE


  # opening_time = global_information.text.split("\n")[12].strip

  # p opening_time

    #bar_name = html2_doc.search('.listing_page_title_container clearfix ').text.strip
  # bar_address = html2_doc.search('th .xs-px0 .sm-full-width').text.strip
  # global_information = html2_doc.search('.listing_details tbody tr td')

  # global_information.children.children.each do |element|
  #   p element
  #   puts "======================================"
  # end
  # bar_opening_time = html2_doc.search('td .xs-px0 .sm-full-width').text.strip
  # bar_category = html2_doc.search('.xs-bold .xs-text-7').text.strip
  # bar_photo = html2_doc.search('.img').attribute('src').first

bar_params = {
  name: bar_name,
  address: bar_address,
  category: bar_category,
  photo: bar_photo
}
p bar_params

  bar = Place.new(
    name: bar_name,
    address: bar_address,
    category: bar_category,
    photo: bar_photo
    )
  if bar.valid?
    puts "Bravoooooo"
  else
    puts bar.errors.messages
  end

end


sexual_orientation =["hetero", "homo", "bi"]
days =["lundi", "mardi", "mercredi", "jeudi", "vendredi", "samedi"]

User.create(
  email: "jf@nomail.com",
  password: "coucou",
  name: "Jojo",
  description: "je suis BG",
  age: 25,
  height: "1m80",
  smoker: true,
  drinker: true,
  sex: "Homme",
  sexual_orientation: "hetero",
  photo: "https://fr.123rf.com/photo_37009483_selfie-portrait-de-jeune-homme-extérieur.html")

User.create(
  email: "j@nomail.com",
  password: "coucou les copaings",
  name: "Gigi",
  description: "je suis une BG",
  age: 27,
  height: "1m70",
  smoker: false,
  drinker: true,
  sex: "Femme",
  sexual_orientation: "hetero",
  photo: "https://fotomelia.com/wp-content/uploads/edd/2015/12/banque-d-images-gratuites-libres-de-droits425.jpg")

User.create(
  email: "fifi@nomail.com",
  password: "Hi friends",
  name: "Robert",
  description: "match pour me découvrir",
  age: 23,
  height: "1m85",
  smoker: true,
  drinker: false,
  sex: "Homme",
  sexual_orientation: "bi",
  photo: "https://image.freepik.com/photos-gratuite/drole-jeune-homme-prenant-selfie-studio_23-2148165077.jpg")


User.create(
  email: "no@nomail.com",
  password: "coucou hey hye",
  name: "Béa",
  description: "hellooooo",
  age: 25,
  height: "1m65",
  smoker: true,
  drinker: true,
  sex: "Femme",
  sexual_orientation: "homo",
  photo: "https://image.freepik.com/photos-gratuite/souriant-belle-femme-prenant-selfie-photo-montrant-signe-victoire-regardant-camera_1262-14385.jpg")

User.create(
  email: "kikou@nomail.com",
  password: "coucou",
  name: "John",
  description: "je suis le plus drole hehe",
  age: 25,
  height: "1m80",
  smoker: true,
  drinker: true,
  sex: "Homme",
  sexual_orientation: "homo",
  photo: "https://pbs.twimg.com/media/CVJftYhWwAA7YO7.jpg")

User.create(
  email: "marie@nomail.com",
  password: "coucou",
  name: "Marie",
  description: "la plus intello",
  age: 28,
  height: "1m60",
  smoker: true,
  drinker: true,
  sex: "Femme",
  sexual_orientation: "hetero",
  photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQYkvfUEB3IuFxALVATBwoVvwQfSs_dCoslEPF0mzMXXg0N1gSi")


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
