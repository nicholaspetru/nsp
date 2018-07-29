module Api::V1
  class ExperiencesController < ApplicationController
    before_action :set_experience, only: [:show, :update, :destroy]
    before_action :set_cors_headers, only: [:show, :index]

    def index
      @experiences = Experience.order(:id)

      render json: @experiences.pluck(:id)
    end

  def show
    @experience_facade = {
      experience: @experience,
      descriptions: @experience.descriptions
    }

    render json: @experience_facade
  end

  def create
    @experience = Experience.new(experience_params)

    if @experience.save
      render json: @experience, status: :created
    else
      render json: @experience.errors, status: :unprocessable_entity
    end
  end

  def update
    if @experiences.update(experience_params)
      render json: @experiences
    else
      render json: @experiences.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @experiences.destroy
    if @experiences.destroy
      head :no_content, status: :ok
    else
      render json: @experience.errors, status: :unprocessable_entity
    end
  end

  private
    def set_cors_headers
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
      headers['Access-Control-Request-Method'] = '*'
      headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
    end

    def set_experience
      @experience = Experience.find(params[:id])
    end

    def experience_params
      params.require(:experience).permit(:label, :location, :start_date, :end_date, :postion)
    end

  end
end
