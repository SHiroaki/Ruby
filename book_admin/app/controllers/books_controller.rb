# coding: utf-8
class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destory]

  private
  def set_book
    @book = Book.find(params[:id])
  end

  def show
    @book = Book.find(params[:id])
    respond_to do |format|
      format.html
      format.csv
      format.json
    end
    # render :show
    # テンプレートを探す RAILS_ROOT/app/views/コントローラ名/アクション名.html.erb
    # テンプレートを基にデータを展開し最終的なHTMLを生成する
  end
end
