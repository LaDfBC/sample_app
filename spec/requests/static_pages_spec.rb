require 'spec_helper'

describe "StaticPages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  describe "Home Page" do
    it "should have this content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
  
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "#{base_title}")
    end

    it "should not have the title 'Home'" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => 'Home')
    end
  end

  describe "Help Page" do
    it "should have this content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
  
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "#{base_title} | Help")
    end
  end

  describe "About Us" do
    it "should have this content 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
  
    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "#{base_title} | About")
    end
  end

  describe "Contact" do
    it 'should have the content "Contact"' do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "#{base_title} | Contact")
    end
  end

end
