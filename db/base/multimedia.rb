require 'csv'

CSV.foreach(Rails.root.join('seed_information/multimedia_f1.csv'), headers: true) do |row|
  m = Multimedium.new
  m.name = row['name']
  m.about = row['about']
  m.uri_path = row['uri_path']
  m.capture_date = row['capture_date']
  m.save

  puts "======= successfully created ======"

  # generating relationship
  album = Album.find_by(name: 'Mujer Valiente')
  AlbumMediaJoin.create(
    album_id: album.id,
    multimedium_id: m.id,
    adjective: m.name_abstract
  )

  puts "======= added to #{album.name} album ======"

end
