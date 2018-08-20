# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flight.destroy_all
User.destroy_all
Document.destroy_all

Flight.create!(
    [{
    seat: 6,
    destination: "Hawaii",
    departure_time: '2018-05-11 21:30:00',
    arrival_time: '2018-05-12 02:15:00'
    }, {
    seat: 18,
    destination: "Cuba",
    departure_time: '2018-06-21 19:32:00',
    arrival_time: '2018-06-22 07:54:00'
    }])

User.create!([{
    username: "hp",
    full_name: "Harry Potter",
    country: "United Kingdom",
    city: "Hogsmeade",
    email: "harry2@gmail.com",
    password: "hedwig9",
    password_confirmation: "hedwig9"
}, {
    username: "khlo",
    full_name: "Khloe Kardashian",
    country: "United States of America",
    city: "Los Angeles",
    email: "kardash76@gmail.com",
    password: "22kim",
    password_confirmation: "22kim"
}])

Document.create!([
    {
    document_type: 1,
    expiration_date: "2020-01-07",
    passport_number: "ZE000774"
    }, {
    document_type: 2,
    expiration_date: "2020-12-31",
    drivers_licence_number: "B01223501222232"
    }])

p "created 2 flights, users and documents"