# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

comic_books = ComicBook.create([
  {
    name: 'Adventures of a DevOps Guru',
    description: 'Follow the DevOps Guru through the wild world of managing infrastructure, automation, and processes!',
    author: 'Charlie McClung'
  },
  {
    name: 'Super Programmer Man',
    description: 'He\'s a programmer, he knows all the languages, he does all the things. He\'s Super Programmer Man.',
    author: 'Charlie McClung'
  }
])
