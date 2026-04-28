require 'webrick'

dir = File.dirname(__FILE__)
server = WEBrick::HTTPServer.new(
  Port: (ENV['PORT'] || 8090).to_i,
  DocumentRoot: dir
)
trap('INT') { server.shutdown }
server.start
