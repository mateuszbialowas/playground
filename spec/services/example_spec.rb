# frozen_string_literal: true

require 'rails_helper'
describe Example, type: :service do
  subject(:service) { described_class.new(employee_id_param).call }

  let(:employee) { create(:employee) }
  let(:employee_id_param) { employee.id }

  context 'with success' do
    it 'enqueue job' do
      Sidekiq::Testing.disable! do
        # expect { service }.to change(ExampleJob.jobs, :size).by(1)
        expect { service }.to change { Sidekiq::Queue.new.size }.by(1)
      end
    end

    it 'enqueue job with correct params', :disable_sidekiq_testing do
      # service
      # expect(ExampleJob).to have_enqueued_sidekiq_job(employee_id_param)

      # job = Sidekiq::Queue.new.first
      # expect(job.args.first).to eq(employee_id_param)
      # expect(job.klass).to eq('ExampleJob')

      expect { service }.to change { Sidekiq::Queue.new.size }.by(1)
    end

    it 'enqueue job', :disable_sidekiq_testing do
      # expect { service }.to change(Sidekiq::Queues['default'], :size).by(1)
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
