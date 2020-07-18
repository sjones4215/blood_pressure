require_relative 'client'
require_relative 'info'
class Client_Storage
    def initialize(storage = [])
        @storage = storage
    end
    def add_to(value)
        @storage.push(value)
    end
    def remove(value)
        @storage.pop(value)
    end
    def list_all_clients
        count = 1
        @storage.each do |client|
        puts "#{count}: #{client}"
        count + 1
        end  
    end
end