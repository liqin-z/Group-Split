# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Transaction.destroy_all
# reset id -> work around: use rake db:drop && rake db:create && rake db:migrate
# ActiveRecord::Base.connection.reset_pk_sequence!(Transaction)

Transaction.create!([{
    user_name: 'member1',
    group_name: 'testgroup',
    trans_number: 900,
    trans_type: "Food",
    group_member: ["member1", "member2", "member3"],
    trans_date: "2021-10-30 01:00:00"
},
{
    user_name: 'member2',
    group_name: 'testgroup',
    trans_number: 100,
    trans_type: "Food",
    group_member: ["member1", "member2"],
    trans_date: "2021-11-3 01:00:00"
},
{
    user_name: 'member3',
    group_name: 'testgroup',
    trans_number: 300,
    trans_type: "Grocery",
    group_member: ["member2", "member3"],
    trans_date: "2021-11-18 01:00:00"
}])

p "Created #{Transaction.count} transactions"