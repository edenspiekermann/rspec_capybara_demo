require 'spec_helper'
require 'capybara/rails'

describe "NewsletterSubscriptions" do
  describe "GET /newsletter_subscriptions" do
    it " subscribes to a newsletter" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      fill_in 'visitor_email', :with => "test@test.de"
      click_button 'Sign up for the newsletter'
      page.should have_content('Signed up test@test.de.')
    end
  end
end
