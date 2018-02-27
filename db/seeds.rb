# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

design = Design.create(name: "base", design_url: "https://res.cloudinary.com/mylifesocks/image/upload/v1514072588/cream_ma9gqb.png", needle_count: 200, construction: "crew", date: 2018)
bump = Bump.create(name: "base", bump_url: "https://res.cloudinary.com/mylifesocks/image/upload/v1514677121/wootv5uxbbwvwcc95ntu.jpg", needle_count: 200, construction: "crew", cushion: "full")
