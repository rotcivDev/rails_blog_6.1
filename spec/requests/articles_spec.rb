require 'rails_helper'

RSpec.describe "Articles", type: :request do
  describe "GET /articles" do
    it "works! (now write some real specs)" do
      get articles_path
      expect(response).to have_http_status(200)
    end
  end


  describe "GET /articles/new" do
    it "works! (now write some real specs)" do
      get new_article_path
      expect(response).to have_http_status(200)
    end

    it "creates an article" do
      get new_article_path
      expect(response).to render_template(:new)

      post articles_path, params: { article: { title: "Sample Title", body: "Sample Content" }}
      expect(response).to redirect_to(assigns(:article))
      follow_redirect!

      expect(response).to render_template(:show)
    end

  end
end
