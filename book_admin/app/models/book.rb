# coding: utf-8
class Book < ActiveRecord::Base
=begin
  #enumeでステータスを表す
  RESAVATION = 0 # 予約受付
  NOW_ON_SALE = 1 # 販売中
  END_OF_PRINT = 2 # 販売終了
  STATUS = [RESAVATION, NOW_ON_SALE, END_OF_PRINT]
=end
  enum status: %w(reservation now_on_sale end_of_print)
  
  scope :costly, -> { where("price > ?", 3000)}
  scope :written_about, ->(theme) { where("name like ?", "%#{theme}%")}

  belongs_to :publisher

  has_many :book_authors
  has_many :authors, through: :book_authors

  # バリデーション
  validates :name, presence: true # presenceは値が空でないか
  validates :name, length: { maximum: 15}
  # numericality 数値の大小、型をチェック
  validates :price, numericality: { greater_than_or_equal_to: 0}

  # コールバック
  before_validation do |book|
    book.name = book.name.gsub(/Cat/) do |matched|
      "lovely #{matched}"
    end
  end

  # 削除したデータのログを書き込む
  after_destroy do |book|
    Rails.logger.info "Book is deleted: #{book.attributes.inspect}"
  end

  def high_price?
    price >= 5000
  end

  after_destroy :if => :high_price? do |book|
    Rails.logger.warn "Book with high price is deleted #{book.attributes.inspect}"
    Rails.logger.warn "Please chack"
  end
=begin
  before_create :if => proc {|_| Settings.maintenance? } do |log|
    log.admin_access = true
  end
=end
=begin
# bookがないって怒られる
  before_validation :add_lovely_to_cat
  def add_lovely_to_cat
    book.name = book.name.gsub(/Cat/) do |matched|
      "lovely #{matched}"
    end
  end
=end
  
end
