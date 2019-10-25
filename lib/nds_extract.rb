$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require 'pp'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  i = 0
  directors = []
  while i < source.length
    directors.push(source[i][:name])
    i += 1
  end
  return directors
end

def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  
  directors_totals[source]
  #returns a hash of director and gross pairs
  
  list_of_directors[source]
  #returns an array of director names
  #i = 0
  #while i < list_of_directors[source]
    #total += [list_of_directors](source)[i]directors_totals(source)
    #i += 1
  #end
end


#puts list_of_directors(directors_database)[0] #=> Stephen Spielberg
#puts list_of_directors(directors_database)[0][directors_totals(directors_database)] #BROKEN
#puts directors_totals(directors_database) #=> HASH of directors => total Earnings
#puts list_of_directors(directors_database) = array of directors names
puts list_of_directors(directors_database)[0]