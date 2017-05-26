class SearchSerializer < ActiveModel::Serializer
  attributes :id, :search_term
  has_many :notes
end
