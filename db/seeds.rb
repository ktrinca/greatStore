# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(:title => 'Blaser',
:description =>
%{
Blaser rojo alunares, genial para este verano porque es liviano
},
:image_url => '/assets/big1.jpg',
:cost_price => 49.50,
:sale_price => 100.50)

Product.create(:title => 'Campera dos',
:description =>
%{
Campera de cuero divi
},
:image_url => '/assets/big2.jpg',
:cost_price => 80.50,
:sale_price => 30.50)