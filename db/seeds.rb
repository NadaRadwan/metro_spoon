# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Rater.create!(name:  "Adnane Gasmi",
             email: "ad.gasmi@gmail.com",
             atype: "blog",
             password: "pass",
             password_confirmation: "pass",
             admin: true)

Rater.create!(name:  "Adnane Gasmi2",
             email: "ad.gasmi2@gmail.com",
             atype: "blog",
             password: "pass",
             password_confirmation: "pass",
             admin: false)

Rater.create!(name:  "Adnane Gasmi3",
             email: "ad.gasmi3@gmail.com",
             atype: "critic",
             password: "pass",
             password_confirmation: "pass",
             admin: false)