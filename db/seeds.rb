# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create([
  {title: "Training Movie 1", genre: "Thriller", rating: "R", movie_length: 120},
  {title: "Training Movie 2", genre: "Comedy", rating: "PG-13", movie_length: 90},
  {title: "Training Movie 3", genre: "Drama", rating: "PG-13", movie_length: 115},
  ])

Screen.create([
  {screen_name: "Screen 1", seat_capacity: 50},
  {screen_name: "Screen 2", seat_capacity: 30},
  {screen_name: "Screen 3", seat_capacity: 40},
  ])

ShowingTime.create([
  {movie_id: 1, screen_id: 1, start_time:  DateTime.new(2021, 05, 31, 23, 00) },
  {movie_id: 2, screen_id: 2, start_time:  DateTime.new(2021, 05, 31, 13, 30) },
  {movie_id: 3, screen_id: 3, start_time:  DateTime.new(2021, 05, 31, 18, 45) },
  ])