require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it  "should have the h1 'Sample App' " do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('h1',:text=>'Sample App')
    end
    it  "should have the content 'base title' " do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('title',:text=>'Ruby on Rails Tutorial Sample App')
      end
      it  "should not have a custom page title " do
        # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
        visit '/static_pages/home'
        page.should_not have_selector('title',:text=>'| Home')
      end
    end
 end