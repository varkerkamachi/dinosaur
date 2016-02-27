class Dino < ActiveRecord::Base
  belongs_to :era
  belongs_to :location

  attr_accessor :amqp_messages

  class << self
  	def amqp_receive
  		conn = Bunny.new(:host => '192.168.1.11', port: 5672, user: 'varker', password: 'bunny' )
  		conn.start

      ch = conn.create_channel
      q = ch.queue("rabbitt events")
      puts "waiting for messages from the big mac where the bunny queue '#{q.name}' was set up ...."

      q.subscribe(block: true) do |delivery_info, props, body|
        puts "Message received! ------- #{body} ---------"
        #amqp_messages.push(body)
        puts "props: #{props.inspect} ==================="
        puts "info: #{delivery_info.inspect} ==================="

        delivery_info.consumer.cancel
      end
  	end

    def msgs
      self.amqp_receive
      #@amqp_messages
    end
  end # end class methods ........
end
