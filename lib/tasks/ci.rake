
require 'coveralls/rake/task'
Coveralls::RakeTask.new

task tests: [:spec, :features, 'coveralls:push']
