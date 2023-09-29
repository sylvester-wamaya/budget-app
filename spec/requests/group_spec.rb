require 'rails_helper'

RSpec.describe 'Groups', type: :request do
    let(:user){User.create(name:'Test', email:'test@gmail.com', password:'123456')}
    let(:group){Group.create(id: 1, name:'Test Group', icon:'icon (1).png', user_id: user.id)}
    before :each do
        sign_in user
       
    end
    describe 'GET /groups' do
    it 'Should return a succesful response' do
        get groups_path
        expect(response).to have_http_status(200)
    end
    it 'returns the index view' do
        get groups_path
        expect(response).to render_template('index')
      end
    end
    describe 'GET /groups/new' do
        it 'Should return a succesful response' do
            get new_group_path
            expect(response).to have_http_status(200)
        end
        it 'returns the new view' do
            get new_group_path
            expect(response).to render_template('new')
        end
    end
    describe 'GET /groups/:id' do
        it 'Should return a succesful response' do
            get group_path(group)
            expect(response).to have_http_status(200)
        end
        it 'returns the show view' do
            get group_path(group)
            expect(response).to render_template('show')
        end
    end
end