class Application

  def call(env)
    resp = Rack::Response.new
    
    num_1 = Kernel.rand(1..2)
    num_2 = Kernel.rand(1..2)
    num_3 = Kernel.rand(1..2)
    
    if Time.new.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
