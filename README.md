# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Pasos:
https://www.youtube.com/watch?v=TlgSp2XPCY4&list=PL3mtAHT_eRezB9fnoIcKS4vYFjm23vddb&index=1

rails new cda --database=postgresql
cd cda
rails g controller pages home about
bin/rails db:create

git checkout -b styling
git checkout main
rails g scaffold post title body:text

rails g migration add_views_to_posts
(add default)

rails g migration add_name_to_user name

https://www.youtube.com/watch?v=A4cDwj0JYVo&list=PL3mtAHT_eRezB9fnoIcKS4vYFjm23vddb&index=4

Pendiente:
1- https://www.youtube.com/watch?v=A4cDwj0JYVo&list=PL3mtAHT_eRezB9fnoIcKS4vYFjm23vddb&index=4
en 18:51 usa la consola para ver como funciona js y stimulus
*****no se puede editar los comentarios como en el video
2- arreglar que solo pueda editar el que hizo el post

rails runner 'puts "#{User.first.email}"'