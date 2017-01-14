# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "create a admin account, and create 10 public jobs, 10 hidden jobs"

create_account = User.create([email: 'example@gmaile.com', password: '123456', password_confirmation: '123456', is_admin: 'true'])
puts "Admin account created."

create_jobs = for i in 1..10 do
  Job.create!([
    title: "Job no.#{i}",
    description: "This public job is the #{i} created from seeds",
    wage_upper_bound: rand(50..99)*100,
    wage_lower_bound: rand(10..49)*100,
    is_hidden: "false"])
end
puts "10 public jobs created."

create_jobs = for i in 1..10 do
  Job.create!([
    title: "Job no.#{i+10}",
    description: "This hidden job is the #{i} created from seeds",
    wage_upper_bound: rand(50..99)*100,
    wage_lower_bound: rand(10..49)*100,
    is_hidden: "true"
    ])
end
puts "10 hidden jobs created."
