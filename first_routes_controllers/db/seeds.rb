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
        id: 1,
        username: "sam_lilly"
    )

    daniel = User.create(
        id: 2,
        username: "danny_blaz"
    )

    ara = User.create(
        id: 3,
        username: "aratist"
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
