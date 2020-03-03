class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :title, :rating, :creations

  def cases
    @object.creations
  end
end
