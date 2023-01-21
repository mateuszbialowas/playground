# frozen_string_literal: true

class Employee < ApplicationRecord
  include ImageUploader::Attachment(:avatar)

  enum status: %w[executive business_development product_management product_marketing design development
                  sales].index_with(&:to_s)
end
