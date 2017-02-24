# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.destroy_all
Character.destroy_all

houses = House.create([
    {title: "Bodymore", img_url: "https://upload.wikimedia.org/wikipedia/en/b/b0/TheWireBaltimore.jpg"},
    {title: "GoodFella", img_url: "https://upload.wikimedia.org/wikipedia/en/7/7b/Goodfellas.jpg"},
    {title: "Heisenberg", img_url: "https://s-media-cache-ak0.pinimg.com/564x/dc/45/42/dc4542cb61c32bd20ca933a940f37451.jpg"}
])

characters = Character.create([
  {name: "Omar Little", img_url: "https://s-media-cache-ak0.pinimg.com/originals/d7/e2/29/d7e22964f27a8b1a0844ee6c365b226b.jpg", house: houses[0]},
  {name: "Jimmy Conway", img_url: "https://a1-images.myspacecdn.com/images03/35/3cf7f928dab14427ae6e143ca095bd40/300x300.jpg", house: houses[1]},
  {name: "Walter White", img_url: "https://pbs.twimg.com/profile_images/712856959159025664/fFDmsOal.jpg", house: houses[2]}
])
