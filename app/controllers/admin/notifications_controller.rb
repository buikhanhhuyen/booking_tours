class Admin::NotificationsController < ApplicationController
  load_and_authorize_resource

  def index
    @notifications = Notification.all
    Notification.where(seen: false).update_all(seen: true)
  end
end
