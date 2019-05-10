require 'rails_helper'

describe 'navigate' do
  before do
    @post = Post.create(title:"post title", description: "post description")
  end

  it 'loads the show page' do
    visit "/posts/#{@post.id}"
    expect(page.status_code).to eq(200)
  end

  it 'shows the title on the show page in an h1 tage' do
    visit "/posts/#{@post.id}"
    expect(page).to have_css("h1", text:@post.title)
  end

  it 'shows the post content in a p tag' do
    visit "/posts/#{@post.id}"
    expect(page).to have_css("p", text:@post.description)
  end
end
