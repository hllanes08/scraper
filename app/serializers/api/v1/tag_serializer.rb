class API::V1::TagSerializer < ActiveModel::Serializer
   attributes :id, :tag_type, :content, :page_id
  
end
