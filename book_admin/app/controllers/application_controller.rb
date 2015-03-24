# coding: utf-8

class LoginFailed < StandardError
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :require_login

  rescue_from LoginFailed, with: :login_failed

  def login_failed
    render template: 'shared.login_failed', status: 401
  end
  
  def require_login
    # ログインを確認し、非ログイン時にリダイレクトする処理
  end

  def detect_mobile_variant
    request.variant = :mobile if request.user_agent =~ /iPhone/
  end
end

class LoginsController < ApplicationController
  def create
    @user = User.where(name: params[:name], password: params[:password]).first
    raise LoginFailed unless @user # @userが偽の時に例外
  end
  # require_loginをスキップする
  skip_before_action :require_login, only: [:new, :create]
end
