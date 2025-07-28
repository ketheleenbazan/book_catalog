class ApplicationJob < ActiveJob::Base
  #automatically retry jobs that encountered a deadlock
  #retry_on ActiveRecord::Deadlocked
end
