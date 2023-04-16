# frozen_string_literal: true

require 'rails_helper'
describe Example, type: :service do
  subject(:service) { described_class.new(employee_id_param).call }

  let(:employee) { create(:employee) }
  let(:employee_id_param) { employee.id }

  context 'with success' do
    it 'enqueue job' do
      Sidekiq::Testing.disable! do
        expect { service }.to change { Sidekiq::Queue.new.size }.by(1)
      end
    end

    it 'enqueue job2', :disable_sidekiq_testing do
      expect { service }.to change { Sidekiq::Queue.new.size }.by(1)
    end

    it 'enqueue job3', :disable_sidekiq_testing do
      expect { service }.to change {
                              Sidekiq::Queue.new.select do |job|
                                job.klass == 'ExampleJob'
                                job.args == [employee_id_param]
                                job.queue == 'default'
                              end.size
                            }.by(1)
    end
  end
end
