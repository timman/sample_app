require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "shoud have the right tittle" do
      get 'home'
      response.should have_selector("title", :content => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
     it "shoud have the right tittle" do
      get 'contact'
      response.should have_selector("title", :content => "Ruby on Rails Tutorial Sample App | Contact")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "shoud have the right tittle" do
      get 'about'
      response.should have_selector("title", :content => "Ruby on Rails Tutorial Sample App | About")
    end
  end

end
