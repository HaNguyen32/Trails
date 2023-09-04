class SharesController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    def index
        @shares = Share.all.order('created_at DESC')
      end
    
      def new
        @shares = Share.new
      end

      def create
        @shares = Share.new(share_params)
        if @shares.save
          redirect_to root_path
        else
          render :new
        end
      end
      def show
        @share =Share.find(params[:id])
      end

      private

  def share_params
    params.require(:share).permit(:title, :area, :mountain_area, :mountain_name, :date_entry, :date_exit,
        :companions, :access, :course, :itinerary, :activity_record, :image).merge(user_id: current_user.id)
  end
    
end
