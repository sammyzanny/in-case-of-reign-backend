class OptionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :points, :description
end
