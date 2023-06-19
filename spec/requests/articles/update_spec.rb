# spec/requests/articles/update_spec.rb

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Articles' do
  describe 'PATCH /articles/id' do
    subject { patch "/articles/#{article.id}", params: }

    let!(:article) { create(:article) }

    let(:params) do
      {
        article: article_params.merge(title: 'changed title', content: 'changed content')
      }
    end

    let(:article_params) { attributes_for(:article) }

    context 'with loging' do
      login_user

      it do
        subject

        article.reload

        expect(article.title).to eq('changed title')
        expect(article.content).to eq('changed content')
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