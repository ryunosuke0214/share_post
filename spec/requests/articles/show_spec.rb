require 'rails_helper'

RSpec.describe 'Articles' do
  describe 'GET /articles/:id' do
    subject { get "/articles/#{article.id}" }

    let!(:article) { create(:article) }

    context 'with loging' do
      login_user

      it do
        subject
        expect(response).to have_http_status(:success)
        expect(response).to have_http_status '200'
      end
    end

    context 'without login' do
      it do
        subject
        expect(response).to have_http_status '302'
      end
    end
  end
end