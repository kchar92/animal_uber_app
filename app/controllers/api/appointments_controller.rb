class Api::AppointmentsController < ApplicationController
  before_action :authenticate_user
  def index
    @appointments = current_user.appointments
    render 'index.json.jb'
  end
  def create
    @appointment = Appointment.new(
      user_id: current_user.id,
      animal_id: params[:animal_id],
      datetime: params[:datetime],
      request: params[:request]
    )
    @appointment.save
    render 'show.json.jb'
  end
end
