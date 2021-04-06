require 'rails_helper'
# in order to set up a dynamic request feature, we will start by writing a test to verify that page exists
describe 'navigate' do
  before do
    @post = Post.create(title: "My Post", description: "My post desc")
  end
 
  it 'loads the show page' do
    visit "/posts/#{@post.id}"
    expect(page.status_code).to eq(200)
  end

  it 'shows the title on the show page in an h1 tag' do
    visit "/posts/#{@post.id}"
    expect(page).to have_css("h1", text: "My Post")
  end

  it 'shows the description on the show page in a p tag' do
    visit "/posts/#{@post.id}"
    expect(page).to have_css("p", text: "My post desc")
  end
end