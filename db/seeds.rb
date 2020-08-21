require 'faker'
require 'open-uri'

counter = 1

3.times do
 user = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "123456"
  )
  file = URI.open("https://res.cloudinary.com/dj9iphc8u/image/upload/v1597937355/Avatars/avatar#{counter}.jpg")
  user.photo.attach(io: file, filename: "avatar#{counter}.jpg", content_type: 'image/jpg')
  user.save!
  counter += 1
end
puts "3 Users seeded successfully"

address = ['Checkpoint Charlie, Berlin', 'Schloßstraße 9, Berlin', 'Johannisstraße 20,Berlin', 'Mulackstraße, Berlin', 'Auguststraße 11-13, Berlin', 'Alexanderstraße 7, Berlin', 'Skalitzer Str. 45, Berlin', 'Goebenstraße 23, Berlin', 'Kantstraße 17, Berlin', 'Frankfurter Allee 27, Berlin']


  # Outfit 1 __________________________________________________________________________
  item = Item.new(
    title: ["Summer look", "Cool city", "Stylish streewear", "Tomboy casual", "Urban natural"].sample,
    pickup_location: address.sample,
    price: rand(100..500),
    color: Faker::Color.color_name,
    category: %I(Vintage Artsy Casual Gruge Chic Bohemian Formal Streetwear).sample,
    description: Faker::Lorem.sentence(word_count: 15),
    user_id: rand(1..3),
    size: %I(XS S M L XL XXL).sample
  )

  item.style_photo.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit/o1_style_x6vwjj.png'),
    filename: 'style1.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit/o1_shoes_ugxsls.png'),
    filename: 'piece1.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit/o1_jacket_j50uvs.png'),
    filename: 'piece1.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit/o1_sweater_a94vol.png'),
    filename: 'piece1.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit/o1_pants_fglwpo.png'),
    filename: 'piece1.png',
    content_type: 'image/png',
    identify: false
  )

  item.save!
  puts "One item seeded successfully"

  # Outfit 2 __________________________________________________________________________
  item = Item.new(
    title: ["Summer look", "Cool city", "Stylish streewear", "Tomboy casual", "Urban natural"].sample,
    pickup_location: address.sample,
    price: rand(100..500),
    color: Faker::Color.color_name,
    category: %I(Vintage Artsy Casual Gruge Chic Bohemian Formal Streetwear).sample,
    description: Faker::Lorem.sentence(word_count: 15),
    user_id: rand(1..3),
    size: %I(XS S M L XL XXL).sample
  )

  item.style_photo.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit%202/o2_style_gcd2jf.png'),
    filename: 'style.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%202/o2_shorts_vpcvvb.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%202/o2_Sweater_m6twht.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.save!
  puts "Another item seeded successfully"

  # Outfit 3 __________________________________________________________________________
  item = Item.new(
    title: ["Summer look", "Cool city", "Stylish streewear", "Tomboy casual", "Urban natural"].sample,
    pickup_location: address.sample,
    price: rand(100..500),
    color: Faker::Color.color_name,
    category: %I(Vintage Artsy Casual Gruge Chic Bohemian Formal Streetwear).sample,
    description: Faker::Lorem.sentence(word_count: 15),
    user_id: rand(1..3),
    size: %I(XS S M L XL XXL).sample
  )

  item.style_photo.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%203/o3_style_ryu3cl.png'),
    filename: 'style.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%203/o3_sweater_gfyjik.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%203/o3_pants_pbgo3w.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%203/o3_shoes_nv6t6j.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.save!
  puts "Another item seeded successfully"

  # Outfit 4 __________________________________________________________________________
  item = Item.new(
    title: ["Summer look", "Cool city", "Stylish streewear", "Tomboy casual", "Urban natural"].sample,
    pickup_location: address.sample,
    price: rand(100..500),
    color: Faker::Color.color_name,
    category: %I(Vintage Artsy Casual Gruge Chic Bohemian Formal Streetwear).sample,
    description: Faker::Lorem.sentence(word_count: 15),
    user_id: rand(1..3),
    size: %I(XS S M L XL XXL).sample
  )

  item.style_photo.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913615/outfit%204/o4_style_nlpcjs.png'),
    filename: 'style.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913615/outfit%204/o4_skirt_m4ousu.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913615/outfit%204/o4_leggings_b8sroe.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%204/o4_top_nvqsrx.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%204/o4_shoes_ughfni.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.save!
  puts "Another item seeded successfully"

# Outfit 5 __________________________________________________________________________
  item = Item.new(
    title: ["Summer look", "Cool city", "Stylish streewear", "Tomboy casual", "Urban natural"].sample,
    pickup_location: address.sample,
    price: rand(100..500),
    color: Faker::Color.color_name,
    category: %I(Vintage Artsy Casual Gruge Chic Bohemian Formal Streetwear).sample,
    description: Faker::Lorem.sentence(word_count: 15),
    user_id: rand(1..3),
    size: %I(XS S M L XL XXL).sample
  )

  item.style_photo.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913615/outfit%205/o5_style_rm2vdy.png'),
    filename: 'style.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913615/outfit%205/o5_skirt_i92ypd.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913616/outfit%205/o5_shoe_kk9qgo.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913616/outfit%205/o5_top_lywosa.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.save!
  puts "Another item seeded successfully"
  # Outfit 1 __________________________________________________________________________
  item = Item.new(
    title: ["Summer look", "Cool city", "Stylish streewear", "Tomboy casual", "Urban natural"].sample,
    pickup_location: address.sample,
    price: rand(100..500),
    color: Faker::Color.color_name,
    category: %I(Vintage Artsy Casual Gruge Chic Bohemian Formal Streetwear).sample,
    description: Faker::Lorem.sentence(word_count: 15),
    user_id: rand(1..3),
    size: %I(XS S M L XL XXL).sample
  )

  item.style_photo.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit/o1_style_x6vwjj.png'),
    filename: 'style1.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit/o1_shoes_ugxsls.png'),
    filename: 'piece1.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit/o1_jacket_j50uvs.png'),
    filename: 'piece1.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit/o1_sweater_a94vol.png'),
    filename: 'piece1.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit/o1_pants_fglwpo.png'),
    filename: 'piece1.png',
    content_type: 'image/png',
    identify: false
  )

  item.save!
  puts "One item seeded successfully"

  # Outfit 2 __________________________________________________________________________
  item = Item.new(
    title: ["Summer look", "Cool city", "Stylish streewear", "Tomboy casual", "Urban natural"].sample,
    pickup_location: address.sample,
    price: rand(100..500),
    color: Faker::Color.color_name,
    category: %I(Vintage Artsy Casual Gruge Chic Bohemian Formal Streetwear).sample,
    description: Faker::Lorem.sentence(word_count: 15),
    user_id: rand(1..3),
    size: %I(XS S M L XL XXL).sample
  )

  item.style_photo.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit%202/o2_style_gcd2jf.png'),
    filename: 'style.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%202/o2_shorts_vpcvvb.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%202/o2_Sweater_m6twht.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.save!
  puts "Another item seeded successfully"

  # Outfit 3 __________________________________________________________________________
  item = Item.new(
    title: ["Summer look", "Cool city", "Stylish streewear", "Tomboy casual", "Urban natural"].sample,
    pickup_location: address.sample,
    price: rand(100..500),
    color: Faker::Color.color_name,
    category: %I(Vintage Artsy Casual Gruge Chic Bohemian Formal Streetwear).sample,
    description: Faker::Lorem.sentence(word_count: 15),
    user_id: rand(1..3),
    size: %I(XS S M L XL XXL).sample
  )

  item.style_photo.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%203/o3_style_ryu3cl.png'),
    filename: 'style.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%203/o3_sweater_gfyjik.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%203/o3_pants_pbgo3w.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%203/o3_shoes_nv6t6j.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.save!
  puts "Another item seeded successfully"

  # Outfit 4 __________________________________________________________________________
  item = Item.new(
    title: ["Summer look", "Cool city", "Stylish streewear", "Tomboy casual", "Urban natural"].sample,
    pickup_location: address.sample,
    price: rand(100..500),
    color: Faker::Color.color_name,
    category: %I(Vintage Artsy Casual Gruge Chic Bohemian Formal Streetwear).sample,
    description: Faker::Lorem.sentence(word_count: 15),
    user_id: rand(1..3),
    size: %I(XS S M L XL XXL).sample
  )

  item.style_photo.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913615/outfit%204/o4_style_nlpcjs.png'),
    filename: 'style.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913615/outfit%204/o4_skirt_m4ousu.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913615/outfit%204/o4_leggings_b8sroe.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%204/o4_top_nvqsrx.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%204/o4_shoes_ughfni.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.save!
  puts "Another item seeded successfully"

# Outfit 5 __________________________________________________________________________
  item = Item.new(
    title: ["Summer look", "Cool city", "Stylish streewear", "Tomboy casual", "Urban natural"].sample,
    pickup_location: address.sample,
    price: rand(100..500),
    color: Faker::Color.color_name,
    category: %I(Vintage Artsy Casual Gruge Chic Bohemian Formal Streetwear).sample,
    description: Faker::Lorem.sentence(word_count: 15),
    user_id: rand(1..3),
    size: %I(XS S M L XL XXL).sample
  )

  item.style_photo.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913615/outfit%205/o5_style_rm2vdy.png'),
    filename: 'style.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913615/outfit%205/o5_skirt_i92ypd.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913616/outfit%205/o5_shoe_kk9qgo.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913616/outfit%205/o5_top_lywosa.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.save!
  puts "Another item seeded successfully"
  # Outfit 1 __________________________________________________________________________
  item = Item.new(
    title: ["Summer look", "Cool city", "Stylish streewear", "Tomboy casual", "Urban natural"].sample,
    pickup_location: address.sample,
    price: rand(100..500),
    color: Faker::Color.color_name,
    category: %I(Vintage Artsy Casual Gruge Chic Bohemian Formal Streetwear).sample,
    description: Faker::Lorem.sentence(word_count: 15),
    user_id: rand(1..3),
    size: %I(XS S M L XL XXL).sample
  )

  item.style_photo.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit/o1_style_x6vwjj.png'),
    filename: 'style1.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit/o1_shoes_ugxsls.png'),
    filename: 'piece1.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit/o1_jacket_j50uvs.png'),
    filename: 'piece1.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit/o1_sweater_a94vol.png'),
    filename: 'piece1.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit/o1_pants_fglwpo.png'),
    filename: 'piece1.png',
    content_type: 'image/png',
    identify: false
  )

  item.save!
  puts "One item seeded successfully"

  # Outfit 2 __________________________________________________________________________
  item = Item.new(
    title: ["Summer look", "Cool city", "Stylish streewear", "Tomboy casual", "Urban natural"].sample,
    pickup_location: address.sample,
    price: rand(100..500),
    color: Faker::Color.color_name,
    category: %I(Vintage Artsy Casual Gruge Chic Bohemian Formal Streetwear).sample,
    description: Faker::Lorem.sentence(word_count: 15),
    user_id: rand(1..3),
    size: %I(XS S M L XL XXL).sample
  )

  item.style_photo.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit%202/o2_style_gcd2jf.png'),
    filename: 'style.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%202/o2_shorts_vpcvvb.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%202/o2_Sweater_m6twht.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.save!
  puts "Another item seeded successfully"

  # Outfit 3 __________________________________________________________________________
  item = Item.new(
    title: ["Summer look", "Cool city", "Stylish streewear", "Tomboy casual", "Urban natural"].sample,
    pickup_location: address.sample,
    price: rand(100..500),
    color: Faker::Color.color_name,
    category: %I(Vintage Artsy Casual Gruge Chic Bohemian Formal Streetwear).sample,
    description: Faker::Lorem.sentence(word_count: 15),
    user_id: rand(1..3),
    size: %I(XS S M L XL XXL).sample
  )

  item.style_photo.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%203/o3_style_ryu3cl.png'),
    filename: 'style.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%203/o3_sweater_gfyjik.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%203/o3_pants_pbgo3w.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%203/o3_shoes_nv6t6j.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.save!
  puts "Another item seeded successfully"

  # Outfit 4 __________________________________________________________________________
  item = Item.new(
    title: ["Summer look", "Cool city", "Stylish streewear", "Tomboy casual", "Urban natural"].sample,
    pickup_location: address.sample,
    price: rand(100..500),
    color: Faker::Color.color_name,
    category: %I(Vintage Artsy Casual Gruge Chic Bohemian Formal Streetwear).sample,
    description: Faker::Lorem.sentence(word_count: 15),
    user_id: rand(1..3),
    size: %I(XS S M L XL XXL).sample
  )

  item.style_photo.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913615/outfit%204/o4_style_nlpcjs.png'),
    filename: 'style.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913615/outfit%204/o4_skirt_m4ousu.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913615/outfit%204/o4_leggings_b8sroe.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%204/o4_top_nvqsrx.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913614/outfit%204/o4_shoes_ughfni.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.save!
  puts "Another item seeded successfully"

# Outfit 5 __________________________________________________________________________
  item = Item.new(
    title: ["Summer look", "Cool city", "Stylish streewear", "Tomboy casual", "Urban natural"].sample,
    pickup_location: address.sample,
    price: rand(100..500),
    color: Faker::Color.color_name,
    category: %I(Vintage Artsy Casual Gruge Chic Bohemian Formal Streetwear).sample,
    description: Faker::Lorem.sentence(word_count: 15),
    user_id: rand(1..3),
    size: %I(XS S M L XL XXL).sample
  )

  item.style_photo.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913615/outfit%205/o5_style_rm2vdy.png'),
    filename: 'style.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913615/outfit%205/o5_skirt_i92ypd.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913616/outfit%205/o5_shoe_kk9qgo.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913616/outfit%205/o5_top_lywosa.png'),
    filename: 'piece.png',
    content_type: 'image/png',
    identify: false
  )

  item.save!
  puts "Another item seeded successfully"
  # Outfit 1 __________________________________________________________________________
  item = Item.new(
    title: ["Summer look", "Cool city", "Stylish streewear", "Tomboy casual", "Urban natural"].sample,
    pickup_location: address.sample,
    price: rand(100..500),
    color: Faker::Color.color_name,
    category: %I(Vintage Artsy Casual Gruge Chic Bohemian Formal Streetwear).sample,
    description: Faker::Lorem.sentence(word_count: 15),
    user_id: rand(1..3),
    size: %I(XS S M L XL XXL).sample
  )

  item.style_photo.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit/o1_style_x6vwjj.png'),
    filename: 'style1.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit/o1_shoes_ugxsls.png'),
    filename: 'piece1.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit/o1_jacket_j50uvs.png'),
    filename: 'piece1.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit/o1_sweater_a94vol.png'),
    filename: 'piece1.png',
    content_type: 'image/png',
    identify: false
  )

  item.individual_pieces.attach(
    io: open('https://res.cloudinary.com/dj9iphc8u/image/upload/v1597913613/outfit/o1_pants_fglwpo.png'),
    filename: 'piece1.png',
    content_type: 'image/png',
    identify: false
  )

  item.save!
  puts "One item seeded successfully"

