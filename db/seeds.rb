# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "🌱 Seeding data..."

puts "Creating note categories..."
NoteCategory.create!(category_name: "grammar")
NoteCategory.create!(category_name: "pronunciation")
puts "Finished seeding note categories."

puts "Creating notes..."
Note.create!(content: "test note", user_id: 1, note_category_id: 1)
Note.create!(content: "another test note", user_id: 1, note_category_id: 1)
puts "Finished seeding notes."

puts "Creating users..."
User.create!(username: "francescaaa1", password_digest: "123")
User.create!(username: "francescaaa2", password_digest: "123")
puts "Finished seeding users."

puts "Creating word categories..."
WordCategory.create!(category_name: "animal")
WordCategory.create!(category_name: "geography")
puts "Finished seeding word categories."

puts "Creating words..."
Word.create!(word: "gaviota", definition: "seagull", source: "Poet in New York by Federico García Lorca", user_id: 1, word_category_id: 1)
Word.create!(word: "orilla", definition: "shore", source: "Poet in New York by Federico García Lorca", user_id: 1, word_category_id: 1)
puts "Finished seeding words."

puts "🌱 Done seeding!"