class EventController < ApplicationController
  before_action :authenticate_user!, only: [:create, :new]
  def index
    @events = Event.all
  end
  def show
    @event = params[:id]
    @attendances=Attendance.where(event_id: params[:id])
    @attendances_count=@attendances.count
  end
  def new
  end



  def create


    @event = Event.create(title: params[:event_title], description: params[:event_description], start_date: params[:event_start_date],duration: params[:event_duration],price: params[:event_price],location: params[:event_location], user_id: current_user.id)
    puts "#"*100
    @event.errors
    puts "#"*100
    
    if @event.save # essaie de sauvegarder en base @gossip
      # si ça marche, il redirige vers la page d'index du site
      # flash[:notice] = "Post successfully created"
      # gflash :success => "The product has been created successfully!"
      flash["success"] = "event successfully created!"
      redirect_to event_index_path
    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      flash["error"] = "event don't created"
      render new_event_path
    end
  end


  
end
