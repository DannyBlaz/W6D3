# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# def rand_id
#   rand(1..100_000)
# end

ActiveRecord::Base.transaction do
    ArtworkShare.delete_all
    Artwork.delete_all
    User.delete_all
    
    sam = User.create(
        username: "sam_lilly"
    )

    daniel = User.create(
        username: "danny_blaz"
    )

    ara = User.create(
        username: "aratist"
    )

   sam_art1 = Artwork.create(
       title: :plants,
       image_url: "www.plants.com",
       artist_id: sam.id
    )

    sam_art2 = Artwork.create(
        title: :trees,
        image_url: "www.trees.com",
        artist_id: sam.id
    )

    sam_art3 = Artwork.create(
        title: :animals,
        image_url: "www.animals.com",
        artist_id: sam.id
    )

    daniel_art1 = Artwork.create(
        title: :stallion,
        image_url: "www.stallion.com",
        artist_id: daniel.id
    )
 
    daniel_art2 = Artwork.create(
         title: :car,
         image_url: "www.car.com",
         artist_id: daniel.id
    )
 
    daniel_art3 = Artwork.create(
         title: :ruby,
         image_url: "www.ruby.com",
         artist_id: daniel.id
    )


    ara_art1 = Artwork.create(
        title: :canvaspour,
        image_url: "www.canvaspour.com",
        artist_id: ara.id
    ) 
 
    ara_art2 = Artwork.create(
         title: :largepainting,
         image_url: "www.largepainting.com",
         artist_id: ara.id
    )
 
    ara_art3 = Artwork.create(
         title: :smallpainting,
         image_url: "www.smallpainting.com",
         artist_id: ara.id
    )

    shares1 = ArtworkShare.create(
        artwork_id: ara_art2.id,
        viewer_id: daniel.id
    )

    shares2 = ArtworkShare.create(
        artwork_id: daniel_art1.id,
        viewer_id: sam.id 
    )

    shares3 = ArtworkShare.create(
        artwork_id: sam_art3.id,
        viewer_id: ara.id
    )
    
     
    

end



# ActiveRecord::Base.transaction do
#   Artist.delete_all
#   User.delete_all
#   Album.delete_all
#   Playlist.delete_all
#   Song.delete_all
#   PlaylistTrack.delete_all

#   ricky = User.create(
#     id: rand_id,
#     username: "ricky",
#     password: "grade10"
#   )
