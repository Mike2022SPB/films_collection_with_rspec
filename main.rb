require_relative 'lib/film'

puts "Программа «Фильм на вечер»"
puts
puts "Фильм какого режиссера вы хотите сегодня посмотреть?"
puts

files_path = Dir.glob(File.join(__dir__, 'data/*.txt'))

films = files_path
  .map { |file_path| File.readlines(file_path, chomp: true) }
  .map { |text, director, year| Film.new(text, director, year) }

directors = films.map(&:director).uniq

directors.each.with_index(1) do |director, index|
  puts "#{index}: #{director}"
end

choice = gets.to_i

films_by_choice = films.select { |film| directors[choice - 1] == film.director}

puts "Рекомендую к просмотру: "
puts "#{directors[choice - 1]} - #{films_by_choice.sample}"
