# README
A Malaysian coffee rating Rails 6 Regular API App.

# Coffees#index
![alt text](https://i.imgur.com/exFUTD7.png)

# Coffees#show
![alt text](https://i.imgur.com/uMRYYYk.png)

# Coffees#create
![alt text](https://i.imgur.com/XMSEgum.png)

# Coffees#update
![alt text](https://i.imgur.com/IdfTZBH.png)

# Coffees#delete
![alt text](https://i.imgur.com/bm8hlvt.png)

# Reviews#create
![alt text](https://i.imgur.com/5HPxqd2.png)

# Reviews#delete
![alt text](https://i.imgur.com/mKVD8FH.png)


* Ruby version: 3.0.3

* Rails version: 6.1.4.1

* Node version: 16.3.1

* Development Database: PostgreSQL


# Instructions to run in your Local Machine:
*(1) Clone the Repo.

*(2) Install all the dependencies. Run
```
bundle install
```
*(3) Create and Migrate Database. Run
```
rails db:create
rails db:migrate
```
*(4) Spin up your local development server. Run
```
rails s
```
*(5) To list all the available routes. Run
```
rails routes
```
*(6) From your API testing tool, you can follow these endpoints:


```
To List All The Coffee:
GET -> http://localhost:3000/api/v1/coffees.json
```
```
To Show Specific Coffee. For Example:
GET -> http://localhost:3000/api/v1/coffees/starbucks-caffe-verona-ground-coffee
```
```
To Create a New Coffee With Headers:
POST -> http://localhost:3000/api/v1/coffees
```
```
To Update an Existing Coffee With Headers:
PATCH -> http://localhost:3000/api/v1/coffees/nescafe-classic-arabica-robusta-blend
```
```
To Delete a Coffee By Slug:
DELETE -> http://localhost:3000/api/v1/coffees/new-insomnia-coffee
```
```
To Create a Review:
POST -> http://localhost:3000/api/v1/reviews
```
```
To Delete an Existing Review by ID:
DELETE -> http://localhost:3000/api/v1/reviews/7
```