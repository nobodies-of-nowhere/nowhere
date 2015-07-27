# rubocop:disable Rails/Output

puts 'Email address for your user:'
email = STDIN.gets.chomp
puts 'Password for your user (will not be printed to terminal):'
password = STDIN.noecho(&:gets).chomp

User.create(
  email: email,
  password: password,
)
