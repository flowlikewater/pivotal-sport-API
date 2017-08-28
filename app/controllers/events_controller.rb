class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]
  def index
    @events = Event.all
    render json: @events
  end
  def show
    render json: @event
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end


end
