class Person < ActiveRecord::Base
    validates :name, :house_id, presence: true

    # create_table "people", force: :cascade do |t|
    #   t.string     "name",          null: false
    #   t.integer    "house_id"
    #   t.datetime   "created_at"
    #   t.datetime   "updated_at"
    # end

    belongs_to :house,
      primary_key: :id,
      foreign_key: :house_id,
      class_name: 'House'
end
