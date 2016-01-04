require 'rufus-scheduler'

delete_todos = Rufus::Scheduler.singleton

unless defined?(Rails::Console)
  delete_todos.every '24h' do
#    Rails.logger.info "Hello, it's #{Time.now}"
#    Rails.logger.info "Before task completion there are #{Item.where("created_at <= ?", Time.now - 7.days).count} tasks to delete."
    Item.where("created_at <= ?", Time.now - 7.days).destroy_all
#    Rails.logger.info "After task completion there are #{Item.where("created_at <= ?", Time.now - 7.days).count} tasks to delete."
#    Rails.logger.flush
  end
end