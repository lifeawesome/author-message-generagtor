require 's3_uploader'
require 'premailer'

class MailingsController < ApplicationController
  before_action :set_mailing, only: [:show, :edit, :update, :destroy, :generate]

  layout false, :only => [:show, :generate]

  # GET /mailings
  # GET /mailings.json
  def index
    @mailings = Mailing.all
  end

  # GET /mailings/1
  # GET /mailings/1.json
  def show
    get_popular_courses(@mailing)
    get_upcoming_courses(@mailing)
    # logger.debug @popular_courses
    respond_to do |format|
      format.html 
      format.text
    end
  end



  # GET /mailings/new
  def new
    @mailing = Mailing.new

    @mailing.subject = "New Mailing"
    @mailing.month = Date.today
  end

  # GET /mailings/1/edit
  def edit
  end

  # POST /mailings
  # POST /mailings.json
  def create
    @mailing = Mailing.new(mailing_params)

    respond_to do |format|
      if @mailing.valid?
        save_images
        @mailing.save

        format.html { redirect_to mailings_url, notice: 'Mailing was successfully created.' }
        format.json { render :show, status: :created, location: @mailing }
      else
        format.html { render :new }
        format.json { render json: @mailing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mailings/1
  # PATCH/PUT /mailings/1.json
  def update
    respond_to do |format|

      @mailing.assign_attributes(mailing_params)
      if @mailing.valid?
        # save_images
        @mailing.save

        format.html { redirect_to mailings_url, notice: 'Mailing was successfully updated.' }
        format.json { render :show, status: :ok, location: @mailing }
      else
        format.html { render :edit }
        format.json { render json: @mailing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mailings/1
  # DELETE /mailings/1.json
  def destroy
    @mailing.destroy
    respond_to do |format|
      format.html { redirect_to mailings_url, notice: 'Mailing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # GET /mailings/1/generate
  # GET /mailings/1/generate
  def generate
    get_popular_courses(@mailing)
    get_upcoming_courses(@mailing)

    html = render_to_string(:template => 'mailings/show.html.erb',
         :locals => {:mailing => @mailing})
    premailer = Premailer.new(html,
         :warn_level => Premailer::Warnings::SAFE,
         :with_html_string => true)
    render :plain => premailer.to_inline_css
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mailing
      @mailing = Mailing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mailing_params
      params.require(:mailing).permit(:subject, :month, :utm_source, :utm_medium, :utm_campaign, :hero_utm_medium, :hero_title, :hero_url, :hero_description, :hero_image_url, :course_utm_medium, :course_one_title, :course_two_title, :course_three_title, :course_four_title, :course_five_title, :course_six_title, :course_one_description, :course_two_description, :course_three_description, :course_four_description, :course_five_description, :course_six_description, :course_one_url, :course_two_url, :course_three_url, :course_four_url, :course_five_url, :course_six_url, :course_one_author, :course_two_author, :course_three_author, :course_four_author, :course_five_author, :course_six_author, :course_one_image, :course_two_image, :course_three_image, :course_four_image, :course_five_image, :course_six_image, :upcoming_one, :upcoming_two, :upcoming_three, :upcoming_four, :popular_one, :popular_two, :popular_three, :popular_four, :popular_five, :popular_six, :popular_seven, :popular_eight, :popular_nine, :popular_ten, :popular_eleven, :popular_twelve, :popular_thirteen, :popular_fourteen, :popular_fifteen, :popular_sixteen, :popular_seventeen, :popular_eighteen, :popular_nineteen, :popular_twenty, :popular_twentyone, :popular_twentytwo, :popular_twentythree, :popular_twentyfour, :popular_url_one, :popular_url_two, :popular_url_three, :popular_url_four, :popular_url_five, :popular_url_six, :popular_url_seven, :popular_url_eight, :popular_url_nine, :popular_url_ten, :popular_url_eleven, :popular_url_twelve, :popular_url_thirteen, :popular_url_fourteen, :popular_url_fifteen, :popular_url_sixteen, :popular_url_seventeen, :popular_url_eighteen, :popular_url_nineteen, :popular_url_twenty, :popular_url_twentyone, :popular_url_twentytwo, :popular_url_twentythree, :popular_url_twentyfour, :hero_image_url, :course_one_image, :course_two_image, :course_three_image, :course_four_image, :course_five_image, :course_six_image )
    end

    def save_images
      syms = [
        :hero_image_url,
        :course_one_image,
        :course_two_image,
        :course_three_image,
        :course_four_image,
        :course_five_image,
        :course_six_image
      ]

      syms.each do |image_symbol|
        image = mailing_params[image_symbol]
        if image.respond_to?(:original_filename) && image.respond_to?(:read)
          @mailing[image_symbol] = S3Uploader.upload(image.original_filename, image.read)
        end
      end
    end

    def get_upcoming_courses(course)

      $i = 1;
      $count = 4;

      @upcoming_courses = []
      while $i <= $count
        # Loop through column names
        $number = $i.humanize
        $number = $number.gsub(/-/,'')   # twenty-two  /// twentytwo
        @upcoming = "upcoming_"+$number

        course.attributes.each do |key, value|
          if key == @upcoming
            # Split name at *, create author value
            parts = value.split(' * ', 2)
            @course = parts[0]
            @author = parts[1]
          end
        end
        @upcoming_courses << [{"name" => @course, "author" => @author}]
        $i = $i+1
      end

    end


    def get_popular_courses(m)

      # @popular_courses = Mailing.popular_courses

      $i = 1;
      $count = 24;

      #@popular_courses = Hash.new
      @popular_courses = []
      while $i <= $count
        # Loop through column names
        $number = $i.humanize
        $number = $number.gsub(/-/,'')   # twenty-two  /// twentytwo
        @popular = "popular_"+$number
        @popular_url = "popular_url_"+$number
        m.attributes.each do |key, value|
          if key == @popular
            # Split name at *, create author value
            parts = value.split(' * ', 2)
            @course = parts[0]
            @author = parts[1]
          elsif key == @popular_url
            @url = value
          end
        end
        @popular_courses << [{"name" => @course, "url" => @url, "author" => @author}]
        $i = $i+1
      end
      # logger.debug "----------------------------"
      # logger.debug @popular_courses

    end
end
