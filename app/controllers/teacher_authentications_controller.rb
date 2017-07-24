class TeacherAuthenticationsController < ApplicationController
  skip_before_action :authenticate_user!
  def teacher_register
  teacher = Teacher.new(user_params)
  if teacher.save
    render json: teacher, status: :ok
  else
    render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
  end

  end

  def teacher_login
  end

  private
    def student_params
      params.permit(:email, :first_name, :last_name, :password, :password_confirmation, :school_id)
    end
end
