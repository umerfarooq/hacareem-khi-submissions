class User
  include Mongoid::Document

  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :phone_number, type: String
  field :date_of_birth, type: Time
  field :gender, type: String

  has_many :discounts

  def segment_it_belongs_to
  	segment = nil

  	if gender == 'male'
  		segment = 'men'
  	elsif gender == 'female'
  		segment = 'women'
  	end

  	return segment
  end
end
