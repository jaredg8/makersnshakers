require 'rails_helper'

RSpec.describe ReviewsController do

  describe "When we receive a Review with an user id as the Object" do


    # We should be able to review the object
    # Creating a review User to User
    # Also, creating the review.
    subject(:reviewer) { User.create(email: "jared@test.com", password: "123456")}
    subject(:reviewee) { User.create(email: "isnotjared@test.com", password: "123456")}
    before { controller.stub(:current_user) { reviewer } }

    it "Should create a review user -> user" do

      # POST to reviews#create
      # POST /users/:user_id/reviews
      post :create, params: { user_id: reviewee.id, review: { rating: 5, text: "Nice user" } }
      expect(assigns(:review).user).to be(reviewer)
      expect(response).to redirect_to(root_path)
    end


  end



  describe "When we receive a Review with an item id as the Object" do


    # We should be able to review the object
    # Creating a review User to User
    # Also, creating the review.
    subject(:item_user) { User.create(email: "item_user@test.com", password: "123456")}
    subject(:reviewer) { User.create(email: "jared@test.com", password: "123456")}
    subject(:reviewee) { Item.create(name: "Item", description: "Test", price: 20, user: item_user )}
    before { controller.stub(:current_user) { reviewer } }

    it "Should create a review user -> item" do

      # POST to reviews#create
      # POST /users/:user_id/reviews
      post :create, params: { item_id: reviewee.id, review: { rating: 5, text: "Nice user" } }
      expect(assigns(:review).user).to be(reviewer)
      expect(response).to redirect_to(root_path)
    end


  end


end
