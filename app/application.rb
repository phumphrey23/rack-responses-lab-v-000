class Application

  def call(env)
    resp = Rack::Response.new

    time_now = time.now
    resp.write "#{time_now}"

    if time.now.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
