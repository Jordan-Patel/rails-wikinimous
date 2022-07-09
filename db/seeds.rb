require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.destroy_all

puts 'Creating seeds'
10.times {
  Article.create( title: Faker::Hipster.sentence,
                  content: Faker::Hipster.paragraphs(number: 4))
}

puts 'Done!'
