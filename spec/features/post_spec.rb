require 'rails_helper'

describe 'navigate'  do
  before do
    @post = Post.create(title: "My Post", description: "My post desc")
    end 

    it "loads the show page" do 
      visit "posts/#{@post.id}"
      expect(page.status_code).to eq(200)
    end

    it "shows the title of the post in an h1 tag" do
	  visit "/posts/#{@post.id}"
	  expect(page).to have_css("h1", text: "My Post")
	end

	it "shows the description of the post in a p tag" do
	  visit "/posts/#{@post.id}"
	  expect(page).to have_css("p", text: "post desc")
	end
	
end
