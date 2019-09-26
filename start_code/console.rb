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


          casting1 = Casting.new({
            'star_id' => star1.id,
            'movie_id' => movie1.id,
            'fee' => 10000 })
            casting1.save()

            casting2 = Casting.new({
              'star_id' => star2.id,
              'movie_id' => movie1.id,
              'fee' => 20000 })
              casting2.save()

              casting3 = Casting.new({
                'star_id' => star3.id,
                'movie_id' => movie1.id,
                'fee' => 50000 })
                casting3.save()

                casting4 = Casting.new({
                  'star_id' => star2.id,
                  'movie_id' => movie2.id,
                  'fee' => 30000 })
                  casting4.save()


              binding.pry
              nil
