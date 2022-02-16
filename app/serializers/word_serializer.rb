class WordSerializer < ActiveModel::Serializer
  attributes :id, :word, :definition, :source
end
