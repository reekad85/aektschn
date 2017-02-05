require 'rails_helper'

describe Product do
	context "when the product has comments" do
		before do
  		@product = Product.create!(name: "green tea")
  		@user = User.create!(email: "testuser@specialtea.com", password: "testuser")
  		@product.comments.create!(rating: 1, user: @user, body: "Awful tea!")
  		@product.comments.create!(rating: 3, user: @user, body: "I like tea!")
  		@product.comments.create!(rating: 5, user: @user, body: "Best tea!")
		end

		it "returns the average rating of all comments" do
			expect(@product.average_rating).to eq 3
		end

		it "is not valid" do
			expect(Product.new(description: "Nice tea")).not_to be_valid
		end
	end
end