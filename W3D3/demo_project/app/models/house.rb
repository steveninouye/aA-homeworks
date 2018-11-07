class House  < ActiveRecord::Base
  validates :address, presence: true, uniqueness: true

  # create_table "houses", force: :cascade do |t|
  #   t.string "address",           null: false
  #   t.datetime  "created_at"
  #   t.datetime  "updated_at"
  # end


  has_many :people,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'Person'


  # sends back many values
  # has_many :method name,
  #   through: :method on this class,
  #   source: :method on person/next class


  # sends one value
  # has_one :method name,
  #   through: :method on this class
  #   source: :method on next class

end
