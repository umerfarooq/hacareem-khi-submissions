include ActiveModel::Serialization
class DiscountSerializer < ActiveModel::Serializer
  attributes :id, :latitude, :longitude
end
