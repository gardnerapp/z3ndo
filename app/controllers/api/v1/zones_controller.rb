class Api::V1::ZonesController < ActionController::API
  before_action :set_zone, only:  %i[show destroy]

  def index
    @zones = Zones.all
    render json: @zones, status: :ok
  end

  def show; end

  def create
    @zone.new(zone_params)
    if @zone.save
      render json: @zone, status: :ok
    else
      render json: @zone.errors.full_messages , status: :unprocessable_entity
    end
  end


  def update
    if @zone.update(zone_params)
      render json: @zone, status: :ok
    else
      render json: @zone.errors.full_messages, status: :unprocessable_entity
    end
  end

  def delete
    if @zone.delete
      render json: {}, status: :ok
    end
  end

  private

  def set_zone
    @zone = Zone.find_by(id: params[:id])
  end

  def zone_params
    params.require(:zone).permit %i[name rules purpose]
  end

# todo dynamically get a part of the request and render format
# could wrap in format do clause like original generators
#   get_format
#     @format = params[:format]
#   end
#
#   def index
#     @zones = Zone.all
#     render @format.to_sym, @zone.to_format, status: :accepted
#   end



end
