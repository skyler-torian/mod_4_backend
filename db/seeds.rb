# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'
require 'byebug'
require 'json'
require 'active_support/all'
Song.destroy_all
User.destroy_all
SavedSong.destroy_all

apikey = Rails.application.credentials.deezer[:api_key]
data_json = RestClient.get("https://deezerdevs-deezer.p.rapidapi.com/search?q=eminem", { "X-RapidAPI-Host" => "deezerdevs-deezer.p.rapidapi.com", "X-RapidAPI-Key" => "#{apikey}"})
parsed_data = JSON.parse(data_json)
byebug
array_songs= parsed_data['data']

array_songs.each do |song|
    title = song['title']
    artist = song['artist']['name']
    duration = song['duration']
    album = song['album']['title']
    cover_art = song['album']['cover_medium']
    Song.create(title:title, artist:artist, duration:duration, album: album , cover_art: cover_art)   
end


lemonade = Song.create(title:"Lemonade", artist:"Beyonce", duration:180, album:"Lemonade", cover_art:"none")
halo = Song.create(title:"Halo", artist:"Beyonce", duration:180, album:"I Am Sasha Fierce", cover_art:"https://images-na.ssl-images-amazon.com/images/I/41c6iGjVtDL._SY400_.jpg")
rap_god = Song.create(title:"Rap God", artist:"Eminem", duration:180, album:"Marshall Mathers LP", cover_art:"none")
move1 = Song.create(title:"Move", artist:"Ludacris", duration:180, album:"Word Of Mouf", cover_art:"none")

amia = User.create(name:"Amia", username:"amia123")
skyler = User.create(name:"Skyler", username:"skyler1")

savedsong1 = SavedSong.create(user_id:amia.id, song_id:lemonade.id)
savedsong2 = SavedSong.create(user_id:skyler.id, song_id:lemonade.id)
savedsong3 = SavedSong.create(user_id:amia.id, song_id:rap_god.id)
savedsong4 = SavedSong.create(user_id:skyler.id, song_id:move1.id)
savedsong5 = SavedSong.create(user_id:amia.id, song_id:halo.id)
