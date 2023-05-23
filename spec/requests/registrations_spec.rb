require 'swagger_helper'

RSpec.describe 'registrations', type: :request do

  describe 'Users API', type: :request do
    path '/api/users' do
      post 'Creates a user' do
        tags 'Users'
        consumes 'application/json'
        produces 'application/json'
        parameter name: :user, in: :body, schema: {
          type: :object,
          properties: {
            name: { type: :string },
            email: { type: :string },
            password: { type: :string }
          },
          required: %w[name email password]
        }
  
        response '201', 'user created' do
          let(:user) { { name: 'John Doe', email: 'john@example.com', password: 'password' } }
          run_test!
        end
  
        response '422', 'invalid request' do
          let(:user) { { name: 'John Doe', email: 'john@example.com' } }
          run_test!
        end
      end
    end
  end  
end
