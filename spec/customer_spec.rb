# describe Customer do
#   before(:each) do
#     @tiffany = Customer.create(first_name: 'Tiffany', last_name: 'Abraham', birthday: 'November 2, 1995', address: '1234 Tiff St, Washington D.C. 10004', gender: 'Female')
#     @christina = Customer.create(first_name: 'Christina', last_name: 'Park', birthday: 'April 12, 1995', address: '1234 Christina St, Washington D.C. 10004', gender: 'Female'
#   end
#
#   describe "attributes" do
#     it "has correct first_name" do
#       expect(@tiffany.first_name).to eq("Tiffany")
#       expect(@christina.first_name).to eq("Christina")
#     end
#     it "has a correct last_name" do
#       expect(@tiffany.last_name).to eq("Abraham")
#       expect(@christina.last_name).to eq("Park")
#     end
#
#     it "has a a birthday" do
#       expect(@tiffany.birthday).to eq('November 2, 1995')
#       expect(@christina.birthday).to eq('April 12, 1995')
#     end
#
#
#   end