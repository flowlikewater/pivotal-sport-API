class SportSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :rules, :imageUrl
end
