class ApplicationController < ActionController::API
  before_action :authorized

  def encode_token(payload)
    #payload = { beef: steak }
    JWT.encode(payload, ENV['my_secret'])
    #jwt string: "eyJhbGciOiJIUzI1NiJ9.eyJiZWVmIjoic3RlYWsifQ._IBTHTLGX35ZJWTCcY30tLmwU9arwdpNVxtVU0NpAuI"
  end

  def auth_header
    # { 'Authorization': 'Bearer <token>' }
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      # byebug
      token = auth_header.split(' ')[1]
        # headers: { 'Authorization': 'Bearer <token>' }
        begin
          # byebug
          #token: "eyJhbGciOiJIUzI1NiJ9.eyJiZWVmIjoic3RlYWsifQ._IBTHTLGX35ZJWTCcY30tLmwU9arwdpNVxtVU0NpAuI"
          JWT.decode(token, ENV['my_secret'], true, algorithm: 'HS256')
          # JWT.decode => [{ "beef"=>"steak" }, { "alg"=>"HS256" }]
        rescue JWT::DecodeError
          # [0] gives us the payload { "beef"=>"steak" }
        nil
      end
    end
  end

  def current_user
    if decoded_token
      # decoded_token=> [{"user_id"=>2}, {"alg"=>"HS256"}]
      # or nil if we can't decode the token
     user_id = decoded_token[0]['user_id']
     @user = User.find_by(id: user_id)
   end
  end

  def logged_in?
    !!current_user || !!current_driver
  end

  def authorized
    render json: {message: 'Please log in'}, status: :unauthorized unless logged_in?
  end

end
