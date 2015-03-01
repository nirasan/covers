class BookController < ApplicationController
  def index
    @books = Book.all
  end

  def request_amazon
    #render :text => "#{params[:browse_node_id]} / #{params[:item_page]}"
    render :text => Book.request_amazon(browse_node_id: params[:browse_node_id], item_page: params[:item_page])
  end
end
