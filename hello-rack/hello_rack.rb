class HelloRack
  def call(env)
    request = Rack::Request.new(env)
    ap env
    if request.path  == "/"
      [200, {"Content-Type" => "text/html"}, ["hello rack"]]
    elsif request.path == '/remote_address'
      [200, {"Content-Type" => "text/html"}, ["Mwhahaha sucker! Say goodbye to your computer in 5.... 4.... 3.... 2.... 1...."]]
    else
      [404, {"Content-Type" => "text/html"}, ["404 Error - Content not found."]]
    end
  end
end
