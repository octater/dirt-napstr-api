class RemainSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :sur_name, :entombment, :location, :comments, :dod, :relation_desc
end
