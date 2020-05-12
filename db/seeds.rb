# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create album
puts "===== Loading seed information to Album ====="
Album.create(
  name: 'Mujer Valiente',
  description: 'Album dedicado a las mujeres valientes, trabajadoras, guerreras que no se dejan vencer e invitan a no bajar la guardia y seguir adelante',
  since_date: '01-01-1975',
  till_date: '31-12-2018',
  author: 'jsam'
)

puts "===== Loading seed information for Multimedia ====="
require_relative "base/multimedia"
