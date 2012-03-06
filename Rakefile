require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'webrick'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty --tags @calc"
end

task :start_server do
  $server = WEBrick::HTTPServer.new(
    :Port => 4567, 
    :DocumentRoot => "#{Dir.pwd}/src", 
    :AccessLog => [])
  $webrick = Thread.new do 
    $server.start
  end
end

task :kill_server do
  $server.stop
  $webrick.join 10
end

task :default => [:start_server, :features, :kill_server]
