class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :title, :rating, :rulings

  def rulings
    @object.rulings
  end
end
