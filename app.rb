require 'resque'

class App
  def run(*args)
    Resque.enqueue(Job, *args)
  end
end

class Job
  @queue = :app

  def self.perform(*args)
    p args
  end
end
