require 'spec_helper'

describe App do
  before { ResqueSpec.reset! }

  it 'with different args' do
    App.new.run(1, 2, 3)
    Job.should have_queued('a', 'b', 'c')
  end

  it 'with no args' do
    App.new.run
    Job.should have_queued('a', 'b', 'c')
  end
end
