class API::V1::PageSerializer < ActiveModel::Serializer
    attributes :id, :name, :url, :created_at
    has_many :tag
end
