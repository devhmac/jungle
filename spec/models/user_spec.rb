require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
   
    it 'is valid with valid attributes' do
      
       params = {
       name:'bob',
       last_name:'bobby',
       email: 'dev@dev',
       password:'123',
       password_confirmation:'123'
       }
       expect(User.new(params)).to be_valid

     end
    it 'should not be valid if password is less than 3 characters' do
       params = {
       name:'bob',
       last_name:'bobby',
       email: 'dev@dev',
       password:'12',
       password_confirmation:'12'
       }
       expect(User.new(params)).to_not be_valid
     end
    it 'should not be valid if password and pass confirmation do not match' do
       params = {
       name:'bob',
       last_name:'bobby',
       email: 'dev@dev',
       password:'123',
       password_confirmation:'1233'
       }
       expect(User.new(params)).to_not be_valid
     end
 
   
    
    end
end
