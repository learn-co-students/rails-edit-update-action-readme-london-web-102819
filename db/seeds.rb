# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
articles=Article.create([
    {
        title:"shopping",
        description: "how much money have you got?"
    },
    {
        title:"money saving",
        description: "Don't go shopping then."
    }
])