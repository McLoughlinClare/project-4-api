class ApplicationController < ActionController::API
  before_action :authenticate_user!

  def authenticate_user!
    render json: { errors: ["Unauthorized"] }, status: 401 unless user_signed_in?
  end

  def user_signed_in?
    !!current_user
  end

  def is_student?
    decoded_token[:role] == 'student' if token && decoded_token
  end

  def current_user
    if is_student?
      @current_user ||= Student.find(decoded_token[:id]) if id_found?
    else
      @current_user ||= Teacher.find(decoded_token[:id]) if id_found?
    end
  rescue
    nil
  end

  private

    def id_found?
      token && decoded_token && decoded_token[:id]
    end

    def decoded_token
      @decoded_token ||= Auth.decode(token) if token
    end

    def token
      @token ||= if request.headers['Authorization'].present?
        request.headers['Authorization'].split.last
      end
    end
end
