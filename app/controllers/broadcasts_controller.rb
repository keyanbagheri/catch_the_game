class BroadcastsController < ApplicationController

  def index

    binding.pry

    @broadcasts = Broadcast.todays_broadcasts #where(created_at: (Time.now.midnight - 1.day)..Time.now.midnight)
    @todays_date = @broadcasts[0].date_and_year

    # because the broadcast object has complex methods to retrieve data, let's
    # take out the data and put them in simple hashes so that they can be translated to json
    # @json_hash = @broadcasts.map do |broadcast|
    #   {id: broadcast.id, title: broadcast.title, time: broadcast.time, events: broadcast.events}
    # end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @broadcasts}
    end
  end

  def show
    @broadcast = Broadcast.find_by_id(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

end
