class HomesController < ApplicationController
  def top
  
  end
  
  def create
    # １. データを受け取り新規登録するためのインスタンス作成
    user = User.new(user_params)
    # 2. データをデータベースに保存するためのsaveメソッド実行
    user.save
    # 3. フラッシュメッセージを定義し、詳細画面へリダイレクト
    flash[:notice] = "Login successfully"
    redirect_to todolist_path(User.id)
  end
end
