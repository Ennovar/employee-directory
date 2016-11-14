# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(0..10).each do |i|
  Skill.create(title: "Skill #{i}")
end

(0..4).each do |b|
  buisness = BuisnessUnit.create(title: "Business Unit #{b}")

  (0..30).each do |e|
    employee = Employee.create(name: "Employee #{e}", buisness_unit_id: buisness.id)
    employee.skills = Skill.order("RANDOM()").limit(10)
  end
end
