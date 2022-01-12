require "http"

system "clear"
puts "Choose an option"
puts "[1] Random fortune"
puts "[2] Lotto numbers"

input_option = gets.chomp
if input_option == "1"
  response = HTTP.get("http://localhost:3000/products")
  products = JSON.parse(response.body)
  puts "All the products in the store are: #{products} "
elsif input_option == "2"
  response = HTTP.get("http://localhost:3000/posh")
  product1 = JSON.parse(response.body)

  puts "the first product is #{product1} "
end
