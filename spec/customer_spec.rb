# describe Customer do
#   before(:each) do
#     @tiffany = Customer.create(first_name: 'Tiffany', last_name: 'Abraham', birthday: 'November 2, 1995', address: '1234 Tiff St, Washington D.C. 10004', gender: 'Female')
#     @christina = Customer.create(first_name: 'Christina', last_name: 'Park', birthday: 'April 12, 1995', address: '1234 Christina St, Washington D.C. 10004', gender: 'Female'
#     @bucket_bag = Item.create(price: 499.99, style: 'bucket bag', size: 'medium', color: 'black', category_id: bag.id, inventory: 2)
#
#   end
#
#   describe "attributes" do
#    it "has data attributes given to it from a migration file" do
#     expect(@tiffany.first_name).to eq("Tiffany")
#     expect(@tiffany.last_name).to eq("Abraham")
#     expect(@christina.first_name).to eq("Christina")
#     expect(@christina.last_name).to eq("Park")
#      expect(@tiffany.birthday).to eq('November 2, 1995')
#      expect(@christina.birthday).to eq('April 12, 1995')
#      expect(@tiffany.was)
#    end
#   end
#
#   it "has a a birthday" do
#
#   end
#
# end