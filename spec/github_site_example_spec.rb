require 'spec_helper'

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.default_driver = :selenium_chrome

describe "Github" do
  describe "Home Page Search" do
    before(:all) { visit 'http://github.com' }

    it "should have a text input which accepts a search query" do
      on_page_with :github_search do |page|
        page.perform :enter_search_query, 'gizmo'
      end
    end

    it "submitting the form should show search results with this repo included" do
      on_page_with :github_search do |page|
        page.perform :search, 'gizmo'
      end

      on_page_with :github_search_results do |page|
        repository = page.search_results.repositories.results.detect do |repo|
          repo.name == 'gizmo' && repo.author == 'icaruswings'
        end

        expect(repository).not_to be_nil
      end
    end
  end

  describe "Repo Details" do
    before(:all) { visit 'http://github.com/icaruswings/gizmo' }

    it "should have the expected repository name" do
      on_page_with :github_repo_details do |page|
        page.repo_details.name == 'gizmo'
      end
    end

    it "should have the expected repository author" do
      on_page_with :github_repo_details do |page|
        page.repo_details.author == 'icaruswings'
      end
    end
  end
end
