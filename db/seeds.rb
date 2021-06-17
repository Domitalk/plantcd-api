# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all 

User.create(
    user_name: 'user_name_1',
    first_name: 'first_name_1',
    middle_name: 'middle_name_1',
    last_name: 'last_name_1'
)
User.create(
    user_name: 'user_name_2',
    first_name: 'first_name_2',
    middle_name: 'middle_name_2',
    last_name: 'last_name_2'
)