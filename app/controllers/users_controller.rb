class UsersController < ApplicationController
# 一覧表示画面に対応するアクション
  def index
    @user = User.all
  end

# 新規作成画面に対応するアクション
  def new
    @user = User.new
  end

# 新規登録するためのアクション
  def create
  # Strong_Parameterの記述
    User.create(user_params)
  end

  private
# 以下のメソッドを追加
  def user_params
    params.require(:user).permit(:name, :age)
  end
end
