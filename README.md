# Ruby on Rails Event Schedular application

This is part of the APIs project in The Odin Project’s Ruby on Rails Curriculum. For more information click --> [APIs]
(https://www.theodinproject.com/courses/ruby-on-rails/lessons/apis)

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```
Now, run your server:

```
$ rails s
```
Now you can got http://localhost:3000 and create kittens.

Next open your terminal and install rest-client gem (If you did not)

```
$ gem install rest-client
```
Next head to do irb and make json or xml formatted get requests like:

```
$ r = RestClient.get("http://localhost:3000/kittens", :accept => :json)
$ p r
```

# Authors

* **Yunus Emre Aybey** - [YemreAybey](https://github.com/YemreAybey)
