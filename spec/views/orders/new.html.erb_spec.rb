# require 'rails_helper'

# RSpec.describe "orders/new", type: :view do
#   before(:each) do
#     assign(:order, Order.new(
#       email: "MyString",
#       status: "MyString",
#       total_price: 1.5
#     ))
#   end

#   it "renders new order form" do
#     render

#     assert_select "form[action=?][method=?]", orders_path, "post" do

#       assert_select "input[name=?]", "order[email]"

#       assert_select "input[name=?]", "order[status]"

#       assert_select "input[name=?]", "order[total_price]"
#     end
#   end
# end
