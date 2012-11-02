# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.delete_all
Category.create(:name => 'Camperas')
Category.create(:name => 'Pantalones')
Category.create(:name => 'Polleras Indu')
Category.create(:name => 'Remeras deportivas')
Category.create(:name => 'Remeras fiesta')

Product.delete_all
@category = Category.find_by_name('Remeras fiesta')
Product.create(:title => 'Blaser',
:description =>
%{
Blaser rojo alunares, genial para este verano porque es liviano
},
:image_url => '/assets/big1.jpg',
:cost_price => 49.50,
:sale_price => 100.50,
:category_id => @category.id)

@category= Category.find_by_name('Remeras deportivas')

Product.create(:title => 'Campera dos',
:description =>
%{
Campera de cuero divi
},
:image_url => '/assets/big2.jpg',
:cost_price => 80.50,
:sale_price => 30.50,
:category_id => @category.id)

@category= Category.find_by_name('Camperas')

Product.create(:title => 'Cuero sin parar',
:description =>
%{
Campera de cuero divi
},
:image_url => '/assets/big2.jpg',
:cost_price => 80.50,
:sale_price => 30.50,
:category_id => @category.id)

@category= Category.find_by_name('Camperas')

Product.create(:title => 'Cueross enterate',
:description =>
%{
Campera de cuero divi
},
:image_url => '/assets/big2.jpg',
:cost_price => 80.50,
:sale_price => 30.50,
:category_id => @category.id)

