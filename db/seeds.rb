User.create!(name: "muhammed", email: "mo@test.com", password: "password")

Supplierinfo.create!(name: "mb", email: "ms@gmail.com", phone_number: 12345)

Product.create!(supplierinfo_id: 1, name: "Mercedes-benz Class A", price: 42000, description: "brand new Merceded-benz Class A with navigation, led lights and panoramic roof")
Product.create!(supplierinfo_id: 1, name: "Mercedes-benz Class C", price: 55000, description: "brand new Merceded-benz Class C with navigation, led lights and panoramic roof")
Product.create!(supplierinfo_id: 1, name: "Mercedes-benz Class E", price: 810000, description: "brand new Merceded-benz Class E with navigation, led lights and panoramic roof")
Product.create!(supplierinfo_id: 1, name: "Mercedes-benz Class S", price: 110000, description: "brand new Merceded-benz Class S with navigation, led lights and panoramic roof")
Product.create!(supplierinfo_id: 1, name: "Mercedes-benz Class G", price: 240000, description: "brand new Merceded-benz Class G with navigation, led lights and panoramic roof")

Image.create!(url: "https://www.mercedeshoffman.com/inventoryphotos/2603/w1k3g4fbxnj333709/ip/3.jpg?height=400", product_id: 1)
