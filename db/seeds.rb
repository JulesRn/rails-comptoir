# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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

