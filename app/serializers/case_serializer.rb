class CaseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :picture, :rating_boost, :disclosure, :options
  
  def options
    @object.options
  end
end
