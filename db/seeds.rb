# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


pyramids = [
  {name: "Great Pyramid", img_url: "https://www.egypttoursportal.com/wp-content/uploads/2017/12/The-Great-Pyramid-Egypt-Tours-Portal-e1514361529725.jpg", height: 455 },
  {name: "Pyramid of Khafre", img_url: "http://gizamedia.rc.fas.harvard.edu/images/MFA-images/Giza/GizaImage/full/recent/AAW1111.jpg", height: 448},
  {name: "Step Pyramid", img_url: "https://www.egypttoursportal.com/wp-content/uploads/2017/11/Saqqara-The-Step-Pyramid-Egypt-Tours-Portal-1-e1511902396901.jpg", height: 205 },
  {name: "Red Pyramid", img_url: "https://www.tripsinegypt.com/wp-content/uploads/2018/12/The-Red-Pyramid-Trips-in-Egypt.jpg", height: 341},
  {name: "Bent Pyramid", img_url: "https://www.thevintagenews.com/wp-content/uploads/2019/07/bent-pyramid-picture-id178537817.jpg", height: 344}
]

pyramids.each {|pyramid| Pyramid.create(pyramid)}

pharaohs = [
  {name: "Khufu", date_of_death: "2566 bc"},
  {name: "Djoser", date_of_death: "Unknown"},
  {name: "Hatshepsut", date_of_death: "1458 bc"},
  {name: "Thutmose", date_of_death: "1425 bc"},
  {name: "Khafre", date_of_death: "2480 bc"},
  {name: "Sneferu", date_of_death: "2589 bc"},
  {name: "djedefre", date_of_death: "2558 bc"},
  {name: "Ramesses II", date_of_death: "1213 bc"},
  {name: "Cleopatra", date_of_death: "30 bc"}
]

# Once you set up your tables and associations the way you want them, you can
# uncommnet the following method to associate a pharaoh with a pyramid. 
# once you set up your associations and tables run `rake db:seed` in your terminal
# NOTE: If you try to do this before you set up proper associations, it will error!

pharaohs = pharaohs.map { |pharaoh| pharaoh.merge pyramid_id: Pyramid.all.sample.id }

pharaohs.each { |pharaoh| Pharaoh.create pharaoh }