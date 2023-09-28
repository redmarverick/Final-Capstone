require 'rails_helper'

RSpec.describe CarsController, type: :controller do
  let(:valid_attributes) {
    { name: 'Test Car', description: 'A test car', reserved: false, price: 1000 }
  }

  let(:invalid_attributes) {
    { name: nil, description: 'A test car', reserved: false, price: 1000 }
  }

  describe 'GET #index' do
    it 'returns a success response' do
      get :index, format: :json
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      car = Car.create! valid_attributes
      get :show, params: { id: car.to_param }, format: :json
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Car' do
        expect {
          post :create, params: { car: valid_attributes }, format: :json
        }.to change(Car, :count).by(1)
      end

      it 'renders a JSON response with the new car' do
        post :create, params: { car: valid_attributes }, format: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
      end
    end

    context 'with invalid params' do
      it 'renders a JSON response with errors for the new car' do
        post :create, params: { car: invalid_attributes }, format: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) {
        { name: 'Updated Car' }
      }

      it 'updates the requested car' do
        car = Car.create! valid_attributes
        put :update, params: { id: car.to_param, field_name: 'name', new_value: 'Updated Car' }, format: :json
        car.reload
        expect(car.name).to eq('Updated Car')
      end

      it 'renders a JSON response with the car' do
        car = Car.create! valid_attributes
        put :update, params: { id: car.to_param, field_name: 'name', new_value: 'Updated Car' }, format: :json
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    context 'with invalid params' do
      it 'renders a JSON response with errors for the car' do
        car = Car.create! valid_attributes
        put :update, params: { id: car.to_param, field_name: 'name', new_value: nil }, format: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested car' do
      car = Car.create! valid_attributes
      expect {
        delete :destroy, params: { id: car.to_param }, format: :json
      }.to change(Car, :count).by(-1)
    end

    it 'renders a JSON response with a success message' do
      car = Car.create! valid_attributes
      delete :destroy, params: { id: car.to_param }, format: :json
      expect(response).to have_http_status(:ok)
      expect(response.content_type).to eq('application/json')
    end
  end
end
