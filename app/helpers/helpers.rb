class Helpers
  
  def self.current_user(session)
   @current_user = User.find(session[:user_id])
  end 
  
  def self.is_logged_in?(session)
    @logged_in = User.find(session[:user_id])
    if @logged_in != nil
      true
    else 
      false
    end
  end
end