class Api::V1::UsersController < Api::V1::BaseController
  # skip_before_action :authenticate_user!, only: :index
  before_action :set_user, only: [:show]
  URL ='https://api.weixin.qq.com/sns/jscode2session'

  def login
    # ?appid=APPID&secret=SECRET&js_code=JSCODE&grant_type=authorization_code
    wx_params = {
      appid: Rails.application.credentials.dig(:wx_mp, :app_id),
      secret: Rails.application.credentials.dig(:wx_mp, :app_secret),
      js_code: params[:code],
      grant_type: 'authorization_code'
    }

    response = RestClient.get(URL, params: wx_params)
    user_info = JSON.parse(response)
    p '==========', user_info
    mp_openid = user_info['openid']
    @user = User.find_by(mp_openid: mp_openid)
    @user = User.create(mp_openid: mp_openid, email: "#{SecureRandom.hex(8)}@mail.com", password: 'password') if @user.blank?
  end

  def index
    @users = User.all
  end

  def show
    set_user
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
