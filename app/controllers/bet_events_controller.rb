class BetEventsController < ApplicationController
  before_action :set_bet_event, only: [:show, :edit, :update, :destroy]

  # GET /bet_events
  # GET /bet_events.json
  def index
    @bet_events = BetEvent.all
  end

  # GET /bet_events/1
  # GET /bet_events/1.json
  def show
  end

  # GET /bet_events/new
  def new
    @bet_event = BetEvent.new
  end

  # GET /bet_events/1/edit
  def edit
  end

  # POST /bet_events
  # POST /bet_events.json
  def create
    @bet_event = BetEvent.new(bet_event_params)

    respond_to do |format|
      if @bet_event.save
        format.html { redirect_to @bet_event, notice: 'Bet event was successfully created.' }
        format.json { render :show, status: :created, location: @bet_event }
      else
        format.html { render :new }
        format.json { render json: @bet_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bet_events/1
  # PATCH/PUT /bet_events/1.json
  def update
    respond_to do |format|
      if @bet_event.update(bet_event_params)
        format.html { redirect_to @bet_event, notice: 'Bet event was successfully updated.' }
        format.json { render :show, status: :ok, location: @bet_event }
      else
        format.html { render :edit }
        format.json { render json: @bet_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bet_events/1
  # DELETE /bet_events/1.json
  def destroy
    @bet_event.destroy
    respond_to do |format|
      format.html { redirect_to bet_events_url, notice: 'Bet event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bet_event
      @bet_event = BetEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bet_event_params
      params.require(:bet_event).permit(:name, :description, :end_time, :status, :winning_option)
    end
end
