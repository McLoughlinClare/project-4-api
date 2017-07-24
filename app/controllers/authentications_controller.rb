class AuthenticationsController < ApplicationController
  skip_before_action :authenticate_user!

  def is_student?
    role = params[:role]
    params.delete(:role)
    return role === 'student'
  end

  def register
    if is_student?
      user = Student.new(user_params)
    else
      user = Teacher.new(user_params)
    end

    if user.save
      render json: user, status: :ok
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end



  def login
    if is_student?
      student = Student.find_by_email(params[:email])
      if student && student.authenticate(params[:password])
        token = Auth.issue({ id: student.id, role: 'student'})
        render json: { token: token, student: StudentSerializer.new(student) }, status: :ok
      else
        render json: { errors: ["Invalid login credentials."] }, status: 401
      end
    else
      teacher = Teacher.find_by_email(params[:email])
      if teacher && teacher.authenticate(params[:password])
        token = Auth.issue({ id: teacher.id, role: 'teacher'})
        render json: { token: token, teacher: TeacherSerializer.new(teacher) }, status: :ok
      else
        render json: { errors: ["Invalid login credentials."] }, status: 401
      end
    end
  end

  private
    def user_params
      p "Inside user_params #{params}"
      params.permit(:email, :first_name, :last_name, :name, :password, :password_confirmation, :school_id, :role)
    end


end
