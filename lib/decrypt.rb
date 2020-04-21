require './lib/enigma'

@enigma = Enigma.new

input_file = File.open(ARGV.first, "r")

message = input_file.read.chomp
output = @enigma.decrypt(message, ARGV[2], ARGV[3])

decrypted_message = output[:decryption]

output_file_name = ARGV[1]
output_file = File.open(output_file_name, "w")
output_file.write(decrypted_message)

puts "Created '#{output_file_name}' with the key #{output[:key]} and date #{output[:date]}"
