require "../shared_helpers"
require "sam"
require "../../../src/jennifer/sam"

Log.setup "db", :debug, Log::IOBackend.new(formatter: Jennifer::Adapter::DBFormatter)

if SemanticVersion.parse(Sam::VERSION) < SemanticVersion.new(0, 5, 0)
  Sam.help
end
