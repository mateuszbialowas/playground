class Order < ApplicationRecord
  belongs_to :employee
  belongs_to :project
end
