class AuthenticationsController < ApplicationController

  def register
    student = Student.new(student_params)
    if student.save
      render json: student, status: :ok
    else
      render json: { errors: student.errors.full_messages }, status: :unprocessable_entity
    end
  end



  def login
    student = Student.find_by_email(params[:email])
    if student && student.authenticate(params[:password])
      render json: student, status: :ok
    else
      render json: { errors: ["Invalid login credentials."] }, status: 401
    end
  end

  private
    def student_params
      params.permit(:email, :first_name, :last_name, :password, :password_confirmation, :school_id)
    end


end
