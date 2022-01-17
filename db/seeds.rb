# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.destroy_all

def create_content
  paragraphs = []
  paragraphs << Faker::Lorem.paragraph
  paragraphs << "## #{Faker::Company.bs}"
  paragraphs << Faker::Lorem.paragraphs(2)
  paragraphs << "## #{Faker::Company.bs}"
  paragraphs << Faker::Lorem.paragraphs(4)
  paragraphs.flatten.join("\n\n")
end

10.times do
  Article.create(
    title: Faker::Company.bs,
    content: create_content
  )
end
