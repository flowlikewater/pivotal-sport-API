class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :updated_at, :created_at
end
