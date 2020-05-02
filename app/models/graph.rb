class Graph < ApplicationRecord
  has_many :user, through: :user_graph
end
