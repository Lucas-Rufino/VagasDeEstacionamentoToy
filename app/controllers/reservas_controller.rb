class ReservasController < ApplicationController
  def reservar
    @vaga = Vaga.find(params[:vaga_id])
    @vaga.reservar_ou_desocupar
    redirect_to action: :index, controller: 'vagas'
  end
end
