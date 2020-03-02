class CaseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :picture, :rating_boost, :disclosure
  
end
