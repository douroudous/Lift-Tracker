# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lift_names = ['Squat', 'Deadlift', 'Bench Press', 'Overhead Press', 'Barbell Row', 'Pushup', 'Pullup']

lifts = lift_names.map do |lift|
  Lift.find_or_create_by(name: lift)
end

LiftSet.destroy_all
LiftWorkout.destroy_all
Workout.destroy_all

workouts = (Date.today - 10.days..Date.today).map do |day|
  Workout.create(body_weight: rand(177..182), workout_date: day)
end

workouts.each do |workout|
  LiftWorkout.create(weight: 225, workout: workout, lift: lifts[rand(0..1)])
  LiftWorkout.create(weight: 135, workout: workout, lift: lifts[rand(2..4)])
  LiftWorkout.create(workout: workout, lift: lifts[rand(5..6)])
end

LiftWorkout.all.each do |lift_workout|
  rand(4..5).times do |item|
    LiftSet.create(rep_count: rand(2..5), lift_workout: lift_workout)
  end
end
