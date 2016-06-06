class Department < ApplicationRecord
  validates :position, presence: true , length: {minimum: 2}
end
