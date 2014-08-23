class User < Dymos::Model
  table 'users'
  field :id, :string
  field :name, :string
end