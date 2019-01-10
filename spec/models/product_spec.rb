require 'rails_helper'

describe Product do
   let(:product) {Product.create!(name:"Steel Bracelet", description:"1x4inches", image_url:"bracelet.jpg" )}

   let(:user) {User.create!(email:"jjtt@gmail.com", password:"123456")}
   before do
     product.comments.create!(rating:1, user:user, body:"Awful")
     product.comments.create!(rating:3, user:user, body:"Ok")
     product.comments.create!(rating:5, user:user, body:"Great")
end

  it "returns the average rating of all comments" do
    expect(product.average_rating).to eq 3
    expect(Product.new(description: "I am a description")).not_to be_valid
  end
end
