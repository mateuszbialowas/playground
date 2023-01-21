# frozen_string_literal: true

class ImageUploader < Shrine
  Attacher.validate do
    validate_max_size 1 * 1024 * 1024
    validate_mime_type_inclusion %w[image/jpeg image/png]
    validate_extension_inclusion %w[jpg jpeg png webp]
  end
end
