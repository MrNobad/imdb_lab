require_relative("models/star")
require_relative("models/movie")
require_relative("models/casting")

require('pry')

star1 = Star.new({
  'first_name' => 'Harrison',
  'last_name' => 'Ford' })
  star1.save()


  star2 = Star.new({
    'first_name' => 'Ewan',
    'last_name' => 'McGregor' })
    star2.save()

    star3 = Star.new({
      'first_name' => 'Carrie',
      'last_name' => 'Fisher' })
      star3.save()


      movie1 = Movie.new({
        'title' => 'Star Wars',
        'genre' => 'Sci-Fi' })
        movie1.save()

        movie2 = Movie.new({
          'title' => 'Trainspotting',
          'genre' => 'Drama' })
          movie2.save()


          binding.pry
          nil
