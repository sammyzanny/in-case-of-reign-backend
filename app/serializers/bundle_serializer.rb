class BundleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :theme, :cases
end
