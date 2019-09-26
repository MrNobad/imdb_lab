require_relative('./casting')
require_relative('../db/sql_runner')

class Movie

  attr_reader :id
  attr_accessor :title, :genre

  def initialize(options)

    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']

  end

  def save()
    sql = "INSERT INTO movies(
    title,
    genre
    )
    VALUES(
      $1, $2
      )
      RETURNING id"
      values = [@title, @genre]
      movie = SqlRunner.run( sql, values ).first
      @id = movie['id'].to_i
  end

  def self.all
    sql = "SELECT * FROM movies"
    movies = SqlRunner.run( sql )
    return Movie.map_items(movies)
  end

  def self.delete_all
    sql = "DELETE FROM movies"
    SqlRunner.run ( sql )
  end

  def self.map_items(movie_hashes)
    result = movie_hashes.map { |movie_hash| Movie.new(movie_hash) }
    return result



  end

end
