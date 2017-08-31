class DistrictSerializer < ActiveModel::Serializer
  attributes :id, :name, :lat, :lng
end
