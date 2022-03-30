# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Role.find_or_create_by!(name: 'Developer', billable: true)
Role.find_or_create_by!(name: 'Manager', billable: false)
Person.find_or_create_by!(name: 'Wendell', role: Role.find_by(name: 'Developer'))
Person.find_or_create_by!(name: 'Christie', role: Role.find_by(name: 'Developer'))
Person.find_or_create_by!(name: 'Eve', role: Role.find_by(name: 'Manager'))
