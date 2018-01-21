# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


seeds = YAML::load_file Rails.root.join('db', 'seeds', 'seeds.yml')
seeds['projects'].each do |project|
  p = Project.create title: project['title']
  project['todos'].each do |todo|
    t = Todo.create text: todo['text'], isCompleted: todo['isCompleted']
    p.todos << t
  end
end
