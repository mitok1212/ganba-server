# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "aaa", password: "password", friend:"friend")
Friend.create(friendme: "Michael",friendyou: "John")
Friend.create(friendme: "John",friendyou: "Michael")
Reaction.create(myname: "Emily",yourname: "Mary")

#t.string :name, :null => false
#t.string :password, :null => false
#t.string :friend, :null => false