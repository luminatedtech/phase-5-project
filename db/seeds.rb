
Seller.create(username: "bob")
Customer.create(username: "eddy21")
Item.create(price: 20, size: "Medium", condition: "Well-worn", wearer: "Male", brand: "Nike", name: "Orange Fleece Sweater", seller_id: 1, photo: "sweater.jpg")
Review.create(customer_id: 1, seller_id: 1, rating: 1, title: "Don't buy from this guy", comment: "This guy scammed me")