require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set :show_exceptions, false

describe 'the artist path', :type => :feature do
  before :each do
    visit '/'
    fill_in 'name', :with => 'John'
    fill_in 'genre', :with => 'Rock'
  end

  it 'starts off with showing the user a form to add a new artist' do
    expect(page).to have_css('form#new-artist')
    expect(page).to have_css('input[name='"name"']')
    expect(page).to have_css('button', :text => 'Add')
  end

  it 'starts off with showing the user an empty list of artists' do
    expect(page).to have_css('ul#artists')
    expect(page).not_to have_css('li.artist')
  end

  it 'displays the list of artists saved' do
    click_button 'Add'
    expect(page).to have_content('John')
    expect(page).to have_content('Rock')
  end
end
