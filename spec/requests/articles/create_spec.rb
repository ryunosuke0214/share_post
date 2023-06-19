require 'rails_helper'

RSpec.describe 'Articles' do
  describe 'POST /articles' do
    subject { post '/articles', params: }

    let(:params) do
      {
        article: article_params
      }
    end

    let(:article_params) { attributes_for(:article) }

    context 'with loging' do
      login_user

      it { expect { subject }.to change(Article, :count).by(1) }
    end

    context 'without login' do
      it do
        subject
        expect(response).to have_http_status '302'
      end
    end
  end
end