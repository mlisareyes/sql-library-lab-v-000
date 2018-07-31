def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books INNER JOIN series ON series.id = books.series_id WHERE series.id = 1;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters GROUP BY characters.name HAVING characters.motto = MAX(characters.motto) ORDER BY characters.name DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species) FROM characters GROUP BY characters.species ORDER BY characters.species DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors INNER JOIN series ON series.author_id = authors.id JOIN subgenres ON series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series INNER JOIN characters ON characters.series_id = series.id GROUP BY characters.species ORDER BY MAX(characters.species) DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(books.id) FROM characters INNER JOIN character_books ON character_books.character_id = characters.id JOIN books ON character_books.book_id = books.id GROUP BY characters.name ORDER BY COUNT(books.id) DESC;"
end
