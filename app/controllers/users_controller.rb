class UsersController < ApplicationController
# 新規作成画面に対応するアクション
  def new
    @user = User.new
  end
end
