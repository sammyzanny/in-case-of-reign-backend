class CaseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :picture, :rating_boost, :disclosure, :options, :creator_id, :creator
  
  def options
    @object.options
  end
  
  def creator
    @object.creator
  end

end
