class API::V1::TagSerializer < ActiveModel::Serializer
   attributes :id, :tag_type, :content, :url,  :page_id
  
end
