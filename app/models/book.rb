require 'amazon/ecs'

class Book < ActiveRecord::Base
  has_and_belongs_to_many :browse_nodes

  def self.request_amazon (keyword:"", browse_node_id:nil, item_page:1)
    Amazon::Ecs.options = {
      :associate_tag =>     Rails.application.secrets.amazon_associate_tag,
      :AWS_access_key_id => Rails.application.secrets.amazon_access_key,
      :AWS_secret_key =>    Rails.application.secrets.amazon_secret_key
    }
    amazon = Amazon::Ecs.item_search(
      keyword,
      :search_index => 'KindleStore', 
      :response_group => "Small, Images, EditorialReview, BrowseNodes", 
      :country => 'jp', 
      :browse_node => browse_node_id,
      :sort => "salesrank",
      :item_page => item_page
    )
    amazon.items.each do |item|
      Book.find_or_create_by(asin: item.get('ASIN')) do |book|
        book.title = item.get('ItemAttributes/Title')
        book.description = item.get("EditorialReviews/EditorialReview/Content")
        book.page_url = item.get('DetailPageURL')
        book.small_image = item.get('SmallImage/URL')
        book.medium_image = item.get('MediumImage/URL')
        book.large_image = item.get('LargeImage/URL')
      end
      # puts item.get("BrowseNodes/BrowseNode/BrowseNodeId") #=> メインのカテゴリーID
      # if item.get_element("BrowseNodes/BrowseNode/Children") then #=> サブのIDがあれば表示
      #   item.get_element("BrowseNodes/BrowseNode/Children").elem.children.each {|c| puts c.css("BrowseNodeId").text }
      # end
    end
  end
end
