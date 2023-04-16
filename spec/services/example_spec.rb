# frozen_string_literal: true

require 'rails_helper'

describe Example, type: :service do
  subject(:service) { described_class.new(employee_id_param).call }
  let(:employee) { create(:employee) }
  let(:employee_id_param) { employee.id }

  context 'with success' do
    it 'enqueue job' do
      expect { service }.to change(ExampleJob.jobs, :size).by(1)
    end

    it 'enqueue job with correct params' do
      service
      expect(ExampleJob).to have_enqueued_sidekiq_job(employee_id_param)
    end

    it 'enqueue job' do
      expect { service }.to change(Sidekiq::Queues['default'], :size).by(1)
    end
  end
end
