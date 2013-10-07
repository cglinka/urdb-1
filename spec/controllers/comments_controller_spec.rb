require 'spec_helper'

describe CommentsController do
  let(:valid_attributes_movie) { { "id" => 1 } }
  let(:valid_attributes) { { } }
  let(:valid_session) { { "user" => "Bob" , "movie_id" => 1} }
  # let(:movie) { {"id" => 1}}

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Comment" do
        movie = Movie.create valid_attributes_movie
        expect {
          post :create, {:comment => valid_attributes, :movie_id => 1}
        }.to change(Comment, :count).by(1)
      end

      it "assigns a newly created comment as @comment" do
        movie = Movie.create valid_attributes_movie
        post :create, {:comment => valid_attributes, :movie_id => 1}
        expect(assigns(:comment)).to be_a(Comment)
        expect(assigns(:comment)).to be_persisted
      end

      it "redirects to the created comment" #do
        # post :create, {:comment => valid_attributes}
        # expect(response).to redirect_to(Comment.last)
      #end
    end
  end
end
