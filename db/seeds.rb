Supplier.create!(name: "Brenda's Bakery", phone_number: "847-679-1259", email: "brenda@brendasbakery.com")
Supplier.create!(name: "Tasty Treats", phone_number: "646-589-3002", email: "info@tastytreats.com")

Product.create!(name: "donut", price: 2.25, description: "fresh donut topped with pink frosting and sprinkles", supplier_id: 1)
Product.create!(name: "cookie", price: 1.50, description: "cookie with chocolate chips", supplier_id: 2)
Product.create!(name: "danish", price: 3.75, description: "pastry dough filled with cinnamon and nuts", supplier_id: 1)

Image.create!(product_id: 1, url: "https://donutbar.com/wp-content/uploads/2017/06/donut-bar-homers.png")
Image.create!(product_id: 2, url: "https://www.otisspunkmeyer.com/sites/default/files/styles/large/public/products/OS-Fundraising-ChocolateChipTop_whitespace.png?itok=BKw4fYJ7")
Image.create!(product_id: 3, url: "https://productdbimages.barry-callebaut.com/sites/bc_productdb_images/files/styles/callebautwebsite-450x280/public/externals/de95a9df817cc9c5713f23e0ab4fd991.jpg?itok=WqI3-IXG")
Image.create!(product_id: 2, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMinb2YcPqocnu4C2yIYS272Qs4L5B4rfF3h9IO7zsJx1vFVgM2Q")
