require 'fluent-logger'
class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def log(tag, json)
    json["ip"] = request.remote_ip
    Fluent::Logger::FluentLogger.open(nil, :host=>Rails.application.config.fluent_host, :port=>Rails.application.config.fluent_port)
    Fluent::Logger.post(tag, json)
  end
  
end
