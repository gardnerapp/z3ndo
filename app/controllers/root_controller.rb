class RootController < ApplicationController
  def root
    @zones = Zones.all
    @devices = Device.all
  end
end
