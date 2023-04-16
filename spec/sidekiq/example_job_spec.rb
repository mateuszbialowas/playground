# frozen_string_literal: true

require 'rails_helper'
RSpec.describe ExampleJob, type: :job do
  subject(:job) { described_class.perform_async(employee_id) }

  let(:employee) { create(:employee, position: 'resource') }
  let(:employee_id) { employee.id }

  context 'with success' do
    it 'queues the job' do
      expect { job }.to change(Sidekiq::Queues['default'], :size).by(1)
    end

    it 'queues the job2' do
      expect { job }.to change(described_class.jobs, :size).by(1)
    end

    it 'queues the job3' do
      job
      expect(described_class).to have_enqueued_sidekiq_job(employee.id)
    end

    it 'updates employee position' do
      expect do
        job
        described_class.drain # process all jobs
      end.to change { employee.reload.position }.from('resource').to('CEO')
    end
  end

  context 'when employee not found' do
    let(:employee_id) { 0 }

    it 'raise errors' do
      expect do
        job
        described_class.drain # process all jobs
      end.to raise_error(ActiveRecord::RecordNotFound)
    end

    it 'raise errors2' do
      expect { described_class.perform_inline(employee_id) }.to raise_error(ActiveRecord::RecordNotFound)
    end

    it 'raise errors3', :inline_sidekiq_testing do
      expect { job }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end
