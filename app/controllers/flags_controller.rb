class FlagsController < ApplicationController
  protect_from_forgery with: :null_session

  def new
    if params[:id].present? && params[:content].present?
      token = SecureRandom.uuid
      id_flag = params[:id].to_i
      if Flag.exists?(id_flag: id_flag)
        return render json:
        {
          status: :error,
          message: 'Ya existe un flag con ese id'
        }
      end
      flag = Flag.new(id_flag: id_flag,token: token, content: params[:content])
      if flag.save
        render json:
        {
          status: :ok,
          message: 'Flag establecido con éxito',
          token: flag.token
        }
      else
        render json:
        {
          status: :error,
          message: 'No se pudo setear el flag'
        }
      end
    else
      render json:
      {
        status: :error,
        message: 'Falta el parametro token o content para crear el flag'
      }
    end
  end

  def show
    if params[:id].present? && params[:token].present?
      flag = Flag.where('id = ? and token = ?', params[:id], params[:token]).first
      render json:
      {
        status: :ok,
        flag_id: flag.id,
        token: flag.token,
        contenido: flag.content
      }
    else
      render json:
      {
        status: :error,
        message: 'Falta el parametro id o token para obtener el flag'
      }
    end
  end

end
