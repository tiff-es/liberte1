# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.destroy_all
Item.destroy_all
Review.destroy_all
Purchase.destroy_all
Category.destroy_all

#Customer

c1 = Customer.create_or_find_by(first_name: 'Tim', last_name: 'Roberts', birthday: 'November 1, 1999',
                                address: '1234 Bob St, Washington D.C. 10004', gender: 'Male', username: "timRobs99")

c2 = Customer.create_or_find_by(first_name: 'Christina', last_name: 'Park', birthday: 'January 17, 1990',
                                address: '7414 Colshire Dr. , McLean VA 22102', gender: 'Female', username: "cmp0117")

c3 = Customer.create_or_find_by(first_name: 'Janice', last_name: 'Kim', birthday: 'October 25, 1996',
                                address: '1001 Strawberry Ave, Fairfax VA 22031', gender: 'Female', username: "JanKim96")

c4 = Customer.create_or_find_by(first_name: 'Ezra', last_name: 'Ruby', birthday: 'October 05, 1987',
                                address: '5005 Happy Ave, Arlington VA 22207', gender: 'Prefer not to say', username: "EzRuby87")

c5 = Customer.create_or_find_by(first_name: 'Fred', last_name: 'Ted', birthday: 'June 03, 1968',
                                address: '5005 Oldtown Dr, Alexandria VA 22304', gender: 'Male', username: "eded063")

c6 = Customer.create_or_find_by(first_name: 'Ann', last_name: 'Flower', birthday: 'May 22, 1980',
                                address: '0404 Not Found Dr, Errorville TN 73451', gender: 'Female', username: "FlAnn80")
#
#Category

bag = Category.create_or_find_by(name: 'Bag')
wallet = Category.create_or_find_by(name: 'Wallet')
sunglasses = Category.create_or_find_by(name: 'Sunglasses')

#Item

bucket1 = Item.create_or_find_by(price: 399.99, style: 'bucket bag', size: 'small', color: 'black', category_id: bag.id, inventory: 50)
bucket2 = Item.create_or_find_by(price: 499.99, style: 'bucket bag', size: 'medium', color: 'black', category_id: bag.id, inventory: 50)
bucket3 = Item.create_or_find_by(price: 599.99, style: 'bucket bag', size: 'large', color: 'black', category_id: bag.id, inventory: 50)

bucket4 = Item.create_or_find_by(price: 399.99, style: 'bucket bag', size: 'small', color: 'navy', category_id: bag.id, inventory: 50)
bucket5 = Item.create_or_find_by(price: 499.99, style: 'bucket bag', size: 'medium', color: 'navy', category_id: bag.id, inventory: 50)
bucket6 = Item.create_or_find_by(price: 599.99, style: 'bucket bag', size: 'large', color: 'navy', category_id: bag.id, inventory: 50)

bucket7 = Item.create_or_find_by(price: 399.99, style: 'bucket bag', size: 'small', color: 'camel', category_id: bag.id, inventory: 50)
bucket8 = Item.create_or_find_by(price: 499.99, style: 'bucket bag', size: 'medium', color: 'camel', category_id: bag.id, inventory: 50)
bucket9 = Item.create_or_find_by(price: 599.99, style: 'bucket bag', size: 'large', color: 'camel', category_id: bag.id, inventory: 50)

box1 = Item.create_or_find_by(price: 499.99, style: 'box bag', size: 'small', color: 'black', category_id: bag.id, inventory: 50)
box2 = Item.create_or_find_by(price: 599.99, style: 'box bag', size: 'medium', color: 'black', category_id: bag.id, inventory: 50)
box3 = Item.create_or_find_by(price: 699.99, style: 'box bag', size: 'large', color: 'black', category_id: bag.id, inventory: 50)

box4 = Item.create_or_find_by(price: 499.99, style: 'box bag', size: 'small', color: 'navy', category_id: bag.id, inventory: 50)
box5 = Item.create_or_find_by(price: 599.99, style: 'box bag', size: 'medium', color: 'navy', category_id: bag.id, inventory: 50)
box6 = Item.create_or_find_by(price: 699.99, style: 'box bag', size: 'large', color: 'navy', category_id: bag.id, inventory: 50)

box7 = Item.create_or_find_by(price: 499.99, style: 'box bag', size: 'small', color: 'camel', category_id: bag.id, inventory: 50)
box8 = Item.create_or_find_by(price: 599.99, style: 'box bag', size: 'medium', color: 'camel', category_id: bag.id, inventory: 50)
box9 = Item.create_or_find_by(price: 699.99, style: 'box bag', size: 'large', color: 'camel', category_id: bag.id, inventory: 50)

wallet1 = Item.create_or_find_by(price: 99.99, style: 'strap wallet', size: 'medium', color: 'pebble', category_id: wallet.id, inventory: 30)
wallet2 = Item.create_or_find_by(price: 99.99, style: 'strap wallet', size: 'medium', color: 'powder/red', category_id: wallet.id, inventory: 30)
wallet3 = Item.create_or_find_by(price: 99.99, style: 'strap wallet', size: 'medium', color: 'grey/white', category_id: wallet.id, inventory: 30)

wallet4 = Item.create_or_find_by(price: 199.99, style: 'strap wallet', size: 'large', color: 'pebble', category_id: wallet.id, inventory: 30)
wallet5 = Item.create_or_find_by(price: 199.99, style: 'strap wallet', size: 'large', color: 'powder/red', category_id: wallet.id, inventory: 30)
wallet6 = Item.create_or_find_by(price: 199.99, style: 'strap wallet', size: 'large', color: 'grey/white', category_id: wallet.id, inventory: 30)

sg1 = Item.create_or_find_by(price: 120.00, style: 'aviator', size: 'large', color: 'black', category_id: sunglasses.id, inventory: 30)
sg2 = Item.create_or_find_by(price: 110.00, style: 'aviator', size: 'medium', color: 'black', category_id: sunglasses.id, inventory: 30)
sg3 = Item.create_or_find_by(price: 120.00, style: 'aviator', size: 'large', color: 'brown', category_id: sunglasses.id, inventory: 30)
sg4 = Item.create_or_find_by(price: 110.00, style: 'aviator', size: 'medium', color: 'brown', category_id: sunglasses.id, inventory: 30)

sg5 = Item.create_or_find_by(price: 120.00, style: 'round', size: 'large', color: 'black', category_id: sunglasses.id, inventory: 30)
sg6 = Item.create_or_find_by(price: 110.00, style: 'round', size: 'medium', color: 'black', category_id: sunglasses.id, inventory: 30)
sg7 = Item.create_or_find_by(price: 120.00, style: 'round', size: 'large', color: 'brown', category_id: sunglasses.id, inventory: 30)
sg8 = Item.create_or_find_by(price: 110.00, style: 'round', size: 'medium', color: 'brown', category_id: sunglasses.id, inventory: 30)
sg9 = Item.create_or_find_by(price: 120.00, style: 'round', size: 'medium', color: 'brown', category_id: sunglasses.id, inventory: 30)

# reviews

r1 = Review.create_or_find_by(rating: 7, content: 'Fantastic sunglasses exactly like my video posted describes.', customer: c1, item: sg1)

r2 = Review.create_or_find_by(rating: 10, content: 'How did I ever manage to work at a pool for an entire summer without these! These glasses are incredible', customer: c2, item: sg2)

r3 = Review.create_or_find_by(rating: 6, content: 'I freely admit this is my first pair of relatively expensive sunglasses, The lens quality is great and they really do the job in bright light, Howeve, in my estimation the sidepieces and hardware seem a bit flimsy to me.', customer: c3, item: sg3)

r4 = Review.create_or_find_by(rating: 5, content: 'I have used this particular brand, color and style of sunglasses for at least 10 years. They do get scratched after many instances of dropping them on the ground. So I have had to replace them every few years.', customer: c4, item: sg3)

r5 = Review.create_or_find_by(rating: 6, content: 'This is a great price for this bag but mine came with a slightly crooked zipper top so was hard to open and close and I could not do those actions with one hand. If you order, look over the bag with a careful eye. I also wanted a black with silver which seemed to be unavailable.', customer: c5, item: bucket1)

r6 = Review.create_or_find_by(rating: 9, content: 'Beautiful and so well-made. Lots of pockets and zippers which will be helpful for organizing. The size was just right for me.', customer: c6, item: box1)

r7 = Review.create_or_find_by(rating: 8, content: 'Beautiful handbag, well made and spacious. Large zipper pocket is perfect for your wallet and front slip pocket, makes finding keys and phone easy.', customer: c5, item: bucket2)

r8 = Review.create_or_find_by(rating: 8, content: 'Love the compartments and smaller size. Size fits perfect in my purse without giving up wallet storage. Attractive also.', customer: c6, item: wallet1)

r9 = Review.create_or_find_by(rating: 3, content: 'Wallet was to small to fit euros.', customer: c3, item: wallet2)

# purchase
#
p1 = Purchase.create_or_find_by(customer: c1, item: bucket1)

p2 = Purchase.create_or_find_by(customer: c2, item: bucket2)

p3 = Purchase.create_or_find_by(customer: c3, item: box1)

p4 = Purchase.create_or_find_by(customer: c4, item: box2)

p5 = Purchase.create_or_find_by(customer: c5, item: wallet1)

p6 = Purchase.create_or_find_by(customer: c6, item: wallet2)

p7 = Purchase.create_or_find_by(customer: c5, item: sg1)

p8 = Purchase.create_or_find_by(customer: c4, item: sg2)

p9 = Purchase.create_or_find_by(customer: c3, item: bucket3)

p10 = Purchase.create_or_find_by(customer: c2, item: box3)

p11 = Purchase.create_or_find_by(customer: c1, item: wallet3)

p12 =  Purchase.create_or_find_by(customer: c2, item: wallet4)

p13 = Purchase.create_or_find_by(customer: c3, item: wallet5)

p14 = Purchase.create_or_find_by(customer: c4, item: box4)

p15 = Purchase.create_or_find_by(customer: c5, item: bucket4)

p16 = Purchase.create_or_find_by(customer: c6, item: sg3)

