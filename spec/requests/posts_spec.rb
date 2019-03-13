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
    #post(summary: 'create post') do
    #  response(200, description: 'successful') do
    #    # You can add before/let blocks here to trigger the response code
    #  end
    #end
  end

  #path '/posts/{id}' do
  #  # You'll want to customize the parameter types...
  #  parameter 'id', in: :path, type: :string
  #  # ...and values used to make the requests.
  #  let(:id) { '123' }
  #
  #  get(summary: 'show post') do
  #    response(200, description: 'successful') do
  #      # You can add before/let blocks here to trigger the response code
  #    end
  #  end
  #  patch(summary: 'update post') do
  #    response(200, description: 'successful') do
  #      # You can add before/let blocks here to trigger the response code
  #    end
  #  end
  #  put(summary: 'update post') do
  #    response(200, description: 'successful') do
  #      # You can add before/let blocks here to trigger the response code
  #    end
  #  end
  #  delete(summary: 'delete post') do
  #    response(200, description: 'successful') do
  #      # You can add before/let blocks here to trigger the response code
  #    end
  #  end
  #end
end
