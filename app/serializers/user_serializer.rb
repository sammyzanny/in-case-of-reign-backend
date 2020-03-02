class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :title, :rating
end
