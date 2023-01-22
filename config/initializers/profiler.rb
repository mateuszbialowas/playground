# frozen_string_literal: true

if Rails.env.development?
  Rack::MiniProfiler.config.position = 'bottom-right'
  Rack::MiniProfiler.config.start_hidden = false
  Rack::MiniProfiler.config.enable_hotwire_turbo_drive_support = true
end
