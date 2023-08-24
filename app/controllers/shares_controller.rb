class SharesController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    def index
        @shares = Share.all.order('created_at DESC')
      end
    
      def new
        @share = Share.new
      end

      def create
        @share = Share.new(share_params)
        if @share.valid?
          @share.save
          binding.pry
          redirect_to root_path
        else
          render :new
        end
      end

      private

  def share_params
    params.require(:share).permit(:title, :area, :mountain_area, :mountain_name, :date_entry, :date_exit,
        :companions, :access, :course, :itinerary, :activity_record, :image).merge(user_id: current_user.id)
  end
    
end
