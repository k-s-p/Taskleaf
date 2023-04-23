class SampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts '--------------------------------'
    puts '------------  Test  ------------'
    puts '--------------------------------'
  end
end
