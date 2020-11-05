class Api::V1::EventsController < Api::V1::BaseController

  def index
    @issue = Issue.find(params[:issue_id])
    @events = @issue.events.order(:created_at) 
  end

  def create
    @issue = Issue.find_or_create_by(id: params[:issue][:number])
    @event = Event.new(issue: @issue, action: params[:event][:action])
    if @event.save
      render json: { status: :created, issue: @issue.id, action: @event.action }
    else
      render_error
    end
  end


  private

  def render_error
    render json: { errors: @event.errors.full_messages },
    status: :unprocessable_entity
  end
end
