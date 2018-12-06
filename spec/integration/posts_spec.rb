# spec/integration/pets_spec.rb
require 'swagger_helper'

describe 'Pets API' do

  path '/posts/{id}' do

    get 'Retrieves a post' do
      tags 'Posts'
      produces 'application/json'
      parameter name: :id, :in => :path, :type => :string

      response '200', 'name found' do
        schema type: :object,
          properties: {
            id: { type: :integer, },
            title: { type: :string },
            body: { type: :string },
            tag_ids: { type: :array }
          },
          required: ['id']

        let(:id) { Post.create(title: 'foo', body: 'bar', tag_ids: [1, 2]).id }
        run_test!
      end

      response '404', 'Post not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
