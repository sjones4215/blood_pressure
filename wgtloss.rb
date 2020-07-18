require_relative 'client'
require_relative 'info'
require_relative 'client_database'

client_inv1 = Client_Storage.new

client1 = Info.new
client1.basic
client2 = Info.new
client2.basic
client3 = Info.new
client3.basic

client_inv1.add_to(client1.basic)
client_inv1.add_to(client2.basic)
client_inv1.add_to(client3.basic)