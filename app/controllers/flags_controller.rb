class FlagsController < ApplicationController
  protect_from_forgery with: :null_session

  def new
    if params[:token].present? && params[:content].present?
      flag = Flag.new(token: params[:token], content: params[:content])
      if flag.save
        render json:
        {
          status: 'Ok',
          message: 'Flag establecido con éxito',
          flag_id: flag.id,
          token: flag.token,
          valor: flag.content
        }
      else
        render json:
        {
          status: 'Error',
          message: 'No se pudo setear el flag'
        }
      end
    else
      render json:
      {
        status: 'Error',
        message: 'Falta el parametro token o content para crear el flag'
      }
    end
  end

  def show
    if params[:id].present? && params[:token].present?
      flag = Flag.where('id = ? and token = ?', params[:id], params[:token]).first
      render json:
      {
        flag_id: flag.id,
        token: flag.token,
        valor: flag.content
      }
    else
      render json:
      {
        status: 'Error',
        message: 'Falta el parametro id o token para obtener el flag'
      }
    end
  end

end
