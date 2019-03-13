require 'swagger_helper'

RSpec.describe 'posts', type: :request do

  path '/posts' do
    get(summary: 'list posts') do
      tags :posts
      let!(:posts) { create_list(:post, 3)}

      response(200, description: 'Return all the available posts') do
        it 'Return 3 contacts' do
          body = JSON(response.body)
          expect(body['data'].size).to eq(3)
        end
      end
    end
  end

end
