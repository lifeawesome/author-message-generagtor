class CreateMailings < ActiveRecord::Migration
  def change
    create_table :mailings do |t|
      t.string :subject
      t.string :date_month
      t.string :utm_source
      t.string :utm_medium
      t.string :utm_campaign
      t.string :hero_utm_medium
      t.string :hero_title
      t.string :hero_url
      t.string :hero_description
      t.string :hero_image_url
      t.string :course_utm_medium
      t.string :course_one_title
      t.string :course_two_title
      t.string :course_three_title
      t.string :course_four_title
      t.string :course_five_title
      t.string :course_six_title
      t.string :course_one_description
      t.string :course_two_description
      t.string :course_three_description
      t.string :course_four_description
      t.string :course_five_description
      t.string :course_six_description
      t.string :course_one_url
      t.string :course_two_url
      t.string :course_three_url
      t.string :course_four_url
      t.string :course_five_url
      t.string :course_six_url
      t.string :course_one_author
      t.string :course_two_author
      t.string :course_three_author
      t.string :course_four_author
      t.string :course_five_author
      t.string :course_six_author
      t.string :course_one_image
      t.string :course_two_image
      t.string :course_three_image
      t.string :course_four_image
      t.string :course_five_image
      t.string :course_six_image
      t.string :upcoming_one
      t.string :upcoming_two
      t.string :upcoming_three
      t.string :upcoming_four
      t.string :popular_one
      t.string :popular_two
      t.string :popular_three
      t.string :popular_four
      t.string :popular_url_one
      t.string :popular_url_two
      t.string :popular_url_three
      t.string :popular_url_four

      t.timestamps
    end
  end
end
