# spec/requests/articles/destroy_spec.rb

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Articles' do
  describe 'DELETE /articles/id' do
    subject { delete "/articles/#{article.id}" }

    let!(:article) { create(:article) }

    context 'with loging' do
      login_user

      it { expect { subject }.to change(Article, :count).by(-1) }
    end

    context 'without login' do
      it do
        subject
        expect(response).to have_http_status '302'
      end
    end
  end
end