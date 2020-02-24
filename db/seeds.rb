# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
