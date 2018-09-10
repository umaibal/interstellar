# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Flight.destroy_all
Document.destroy_all

User.create!([
    {
    username: "admin",
    password: "admin",
    password_confirmation: "admin"
    },
    {
    username: "hp",
    password: "hedwig9",
    password_confirmation: "hedwig9"
}, {
    username: "khlo",
    password: "22kim",
    password_confirmation: "22kim"
}])

Flight.create!(
    [{
    total_seats: 100,
    destination: "Honolulu",
    departure_time: '2018-05-11 21:30:00',
    arrival_time: '2018-05-12 02:15:00'
    }, {
    total_seats: 80,
    destination: "Havana",
    departure_time: '2018-06-21 19:32:00',
    arrival_time: '2018-06-22 07:54:00'
    }])

Document.create!([
    {
    document_type: 1,
    expiration_date: "2020-01-07",
    passport_number: "ZE000774",
    user_id: 1
    }, {
    document_type: 2,
    expiration_date: "2020-12-31",
    drivers_licence_number: "B01223501222232",
    user_id: 2
    }])

p "created 2 flights, 3 users and 2 documents"