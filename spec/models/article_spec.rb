require 'rails_helper'

RSpec.describe Article do
  describe 'validations' do
    subject { article.valid? }

    let(:article) { create(:article) }

    describe 'title' do
      context 'when title is empty' do
        it do
          article.title = ''
          expect(subject).to be(false)
        end
      end

      context 'when title is too long' do
        it do
          article.title = Faker::Lorem.characters(number: 26)
          expect(subject).to be(false)
        end
      end
    end

    describe 'content' do
      context 'when content is empty' do
        it do
          article.content = ''
          expect(subject).to be(false)
        end
      end

      context 'when content is too long' do
        it do
          article.content = Faker::Lorem.characters(number: 5001)
          expect(subject).to be(false)
        end
      end
    end
  end
end