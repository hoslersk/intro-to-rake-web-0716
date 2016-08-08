require_relative "../lib/student.rb"

Student.create(name: "Melissa", grade: "10th")
Student.create(name: "April", grade: "10th")
Student.create(name: "Luke", grade: "9th")
Student.create(name: "Devon", grade: "11th")
Student.create(name: "Sarah", grade: "10th")

desc 'migrate changes to your database'
namespace :db do
  task :migrate => :environment do
    Student.create_table
  end
end
