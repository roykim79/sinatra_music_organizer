require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set :show_exceptions, false

describe 'the artist path', :type => :feature do
  before :each do
    visit '/'
  end

  it 'starts off with showing the user a form to add a new artist' do
    expect(page).to have_css('form#new-artist')
    expect(page).to have_css('input[name='"name"']')
  end
end
