class Discount
  include Mongoid::Document

  field :active, type: Boolean, default: true
  field :latitude, type: String
  field :longitude, type: String

  field :customer_segments, type: Array

  field :offers, type: Hash

  field :user_id, type: BSON::ObjectId
  field :ride_id, type: BSON::ObjectId

  belongs_to :user
end
