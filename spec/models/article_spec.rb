require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "validations" do
    it "is valid with valid attributes" do
      article = Article.new(title: "Sample Title", body: "Sample Content")
      expect(article).to be_valid
    end

    it "is not valid without a title" do
      article = Article.new(body: "Sample Content")
      expect(article).to_not be_valid
    end

    it "is not valid without content" do
      article = Article.new(title: "Sample Title")
      expect(article).to_not be_valid
    end

    it "is not valid with too short content" do
      article = Article.new(title: "Sample Title", body: "Sample")
      expect(article).to_not be_valid
    end
  end  
end
