begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new :spec do |t|
    t.verbose = true
    t.rspec_opts = %w(-w -f progress --order defined)
  end
rescue LoadError => e
  task :spec do
    raise 'Failed to load spec task.
Install required gems using: bundle --path=.bundle/gems
Then, invoke Rake using: bundle exec rake', cause: e
  end
end
