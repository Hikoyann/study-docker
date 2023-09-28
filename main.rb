require "webrick"

server = WEBrick::HTTPServer.new(
  DocumetRoot: "./",
  BindAddres: "0.0.0.0",
  Port: 8000
)

server.mount_proc("/") do |req, res|
  res.body = "hell0"
end

server.start