# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# leon = User.create( username: 'Leon')
# victor = User.create( username: "bobo")
anna = User.create( username: "Anna")
mia = User.create( username: 'Mia')
mike = User.create( username: "Mike")

Artwork.create( title: "Sea", image_url: "idk", artist_id: 1)
Artwork.create( title: "Land", image_url: "idk", artist_id: 2)

ArtworkShare.create( artwork_id: 2, viewer_id: 1)
ArtworkShare.create( artwork_id: 1, viewer_id: 2)
ArtworkShare.create( artwork_id: 1, viewer_id: 3)
ArtworkShare.create( artwork_id: 1, viewer_id: 5)
ArtworkShare.create( artwork_id: 2, viewer_id: 5)