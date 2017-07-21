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

  end

  private
    def student_params
      params.permit(:email, :first_name, :last_name, :password, :password_confirmation, :school_id)
    end


end
