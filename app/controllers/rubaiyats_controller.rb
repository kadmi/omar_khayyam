class RubaiyatsController < ApplicationController
  class << self; attr_reader :rubaiyats_count end
  @rubaiyats_count = Rubaiyat.count

  def home
    # @rubaiyats = Rubaiyat.all
  end

  def show
      @rubaiyat = find_by_num(params[:id])
  end

  def search
    num = params[:q].to_i

    if num.between?(0, RubaiyatsController.rubaiyats_count)
      @rubaiyat = find_by_num(num)
    end

    redirect_to '/random' and return if @rubaiyat.nil?

    redirect_to @rubaiyat
  end

  def random
    @rubaiyat = get_random
    render 'show'
  end

  private

  def find_by_num(num)
    Rubaiyat.offset(num.to_i - 1).limit(1).first
  end

  def get_random
    Rubaiyat.order("random()").first
  end

end
