# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150120193208) do

  create_table "mailings", force: true do |t|
    t.string   "subject"
    t.string   "utm_source"
    t.string   "utm_medium"
    t.string   "utm_campaign"
    t.string   "hero_utm_medium"
    t.string   "hero_title"
    t.string   "hero_url"
    t.string   "hero_description"
    t.string   "hero_image_url"
    t.string   "course_utm_medium"
    t.string   "course_one_title"
    t.string   "course_two_title"
    t.string   "course_three_title"
    t.string   "course_four_title"
    t.string   "course_five_title"
    t.string   "course_six_title"
    t.string   "course_one_description"
    t.string   "course_two_description"
    t.string   "course_three_description"
    t.string   "course_four_description"
    t.string   "course_five_description"
    t.string   "course_six_description"
    t.string   "course_one_url"
    t.string   "course_two_url"
    t.string   "course_three_url"
    t.string   "course_four_url"
    t.string   "course_five_url"
    t.string   "course_six_url"
    t.string   "course_one_author"
    t.string   "course_two_author"
    t.string   "course_three_author"
    t.string   "course_four_author"
    t.string   "course_five_author"
    t.string   "course_six_author"
    t.string   "course_one_image"
    t.string   "course_two_image"
    t.string   "course_three_image"
    t.string   "course_four_image"
    t.string   "course_five_image"
    t.string   "course_six_image"
    t.string   "upcoming_one"
    t.string   "upcoming_two"
    t.string   "upcoming_three"
    t.string   "upcoming_four"
    t.string   "popular_one"
    t.string   "popular_two"
    t.string   "popular_three"
    t.string   "popular_four"
    t.string   "popular_url_one"
    t.string   "popular_url_two"
    t.string   "popular_url_three"
    t.string   "popular_url_four"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "month",                    default: '2014-12-15', null: false
    t.string   "popular_five"
    t.string   "popular_six"
    t.string   "popular_seven"
    t.string   "popular_eight"
    t.string   "popular_nine"
    t.string   "popular_ten"
    t.string   "popular_eleven"
    t.string   "popular_twelve"
    t.string   "popular_url_five"
    t.string   "popular_url_six"
    t.string   "popular_url_seven"
    t.string   "popular_url_eight"
    t.string   "popular_url_nine"
    t.string   "popular_url_ten"
    t.string   "popular_url_eleven"
    t.string   "popular_url_twelve"
    t.string   "popular_thirteen"
    t.string   "popular_fourteen"
    t.string   "popular_fifteen"
    t.string   "popular_sixteen"
    t.string   "popular_seventeen"
    t.string   "popular_eighteen"
    t.string   "popular_url_thirteen"
    t.string   "popular_url_fourteen"
    t.string   "popular_url_fifteen"
    t.string   "popular_url_sixteen"
    t.string   "popular_url_seventeen"
    t.string   "popular_url_eighteen"
    t.string   "popular_nineteen"
    t.string   "popular_twenty"
    t.string   "popular_twentyone"
    t.string   "popular_twentytwo"
    t.string   "popular_twentythree"
    t.string   "popular_twentyfour"
    t.string   "popular_url_nineteen"
    t.string   "popular_url_twenty"
    t.string   "popular_url_twentyone"
    t.string   "popular_url_twentytwo"
    t.string   "popular_url_twentythree"
    t.string   "popular_url_twentyfour"
  end

end