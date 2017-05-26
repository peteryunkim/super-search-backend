class NoteSerializer < ActiveModel::Serializer
  attributes :id, :body
  belongs_to :search
end
