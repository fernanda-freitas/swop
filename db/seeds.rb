require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning Database...'

Product.destroy_all
User.destroy_all
Purchase.destroy_all

puts 'Database Cleaned'

puts 'Creating 2 Users'

first_user = User.new
first_user.first_name = 'Fernanda'
first_user.last_name = 'Freitas'
first_user.email = 'fernanda.freitas@gmail.com'
first_user.password = '123456'
first_user.save!

second_user = User.new
second_user.first_name = 'Mariana'
second_user.last_name = 'Garcia'
second_user.email = 'mariana.garcia@gmail.com'
second_user.password = '123456'
second_user.save!

puts 'Finished creating Users'

puts 'Creating Products...'

product01 = Product.new(
  name: 'Iphone 11',
  category: 'technology',
  description: 'Impecavelmente mantido.
  Sempre em capa original e com proteção de películas. Sem riscos ou outras marcas.',
  price: 580,
  user_id: User.first.id,
)
iphone = URI.open('https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone11-purple-select-2019_GEO_EMEA?wid=940&hei=1112&fmt=png-alpha&.v=1567021766320')
product01.photo.attach(io: iphone, filename: 'iphone.png', content_type: 'image/png')
product01.save!

product02 = Product.new(
  name: 'BMW 520 D Pack M Auto',
  category: 'Vehicle',
  description: 'Espectacular BMW E30. Mecânica totalmente revista',
  price: 37000,
  user_id: User.first.id,
)
car = URI.open('https://cdn.motor1.com/images/mgl/7ZL4go/s3/bmw-320i-msport-2021.jpg')
product02.photo.attach(io: car, filename: 'iphone.png', content_type: 'image/png')
product02.save!

product03 = Product.new(
  name: 'Nintendo Switch',
  category: 'Gaming',
  description: 'Nintendo Switch usada uma vez, estado como novo + dois jogos, todos comandos e cabos incluídos, com caixa.',
  price: 320,
  user_id: User.first.id,
)
nintendo = URI.open('https://s2.glbimg.com/CSKVAF2Ge6KlRYIlbh-1cY8wUsg=/0x0:750x500/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2020/D/5/OQSN6dTA6z3AdoS3koqw/nintendo-unsplash-alvaro-reyes.jpeg')
product03.photo.attach(io: nintendo, filename: 'iphone.png', content_type: 'image/png')
product03.save!

product04 = Product.new(
  name: 'Apple Watch',
  category: 'Technology',
  description: 'Apple Watch series 4 - 40MM. Space grey Aluminium case. Nike edition',
  price: 300,
  user_id: User.second.id,
)
watch = URI.open('https://cdn.pocket-lint.com/r/s/970x/assets/images/158682-smartwatches-review-apple-watch-series-7-all-about-the-screen-image2-ggnlijys37.jpg')
product04.photo.attach(io: watch, filename: 'iphone.png', content_type: 'image/png')
product04.save!

product05 = Product.new(
  name: 'Quest 2',
  category: 'Gaming',
  description: 'Vendo Oculus Quest 2 128gb como novo, pouco usado e com todos os acessórios originais e caixa.
  Tenho a fatura também e tem garantia até Novembro de 2022.',
  price: 400,
  user_id: User.second.id,
)
quest = URI.open('https://cdn.pocket-lint.com/r/s/1201x/assets/images/156528-ar-vr-news-oculus-quest-2-update-will-let-you-play-pc-vr-games-wirelessly-soon-image1-dtt3prx9fq.jpg')
product05.photo.attach(io: quest, filename: 'iphone.png', content_type: 'image/png')
product05.save!

product06 = Product.new(
  name: 'Headphones',
  category: 'Music',
  description: 'Novos em caixa, UMI Essentials Auriculares de botão sem fios, com Bluetooth 5.0 , compatíveis com iPhone, Samsung e Huawei, com estojo metálico com base de carregamento.',
  price: 110,
  user_id: User.second.id,
)
headphone = URI.open('https://images.unsplash.com/photo-1613040809024-b4ef7ba99bc3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
product06.photo.attach(io: headphone, filename: 'iphone.png', content_type: 'image/png')
product06.save!

puts 'Finished'
