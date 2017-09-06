class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

  def index
    @events = Event.all
    puts params[:name]
    if params[:name]
      @events = Event.search(params[:name])
    else
      @events = Event.all
    end
    render json: @events.to_json(:include => [:user])
  end
  
  def show
    # render json: @event.to_json(:includes => [:user])
    render json: @event.to_json(:include => {:user=>{
      :include => :detail
    } })

  end

  def create
    @event= Event.new(event_params)
    if @event.save
      render json: @event, status: :created, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end
  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end
  def destroy
    @event.destroy
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit!
    end

end
