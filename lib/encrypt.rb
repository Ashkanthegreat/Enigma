require './lib/enigma'

@enigma = Enigma.new

input_file = File.open(ARGV.first, "r")

message = input_file.read.chomp
output = @enigma.encrypt(message)

encrypted_message = output[:encryption]

output_file_name = ARGV.last
output_file = File.open(ARGV.last, "w")
output_file.write(encrypted_message)

puts "Created '#{output_file_name}' with the key #{output[:key]} and date #{output[:date]}"
