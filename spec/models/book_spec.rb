require 'rails_helper'

RSpec.describe Book, type: :model do
  describe ".request_amazon" do
    context "normal case" do
      it "use keyword" do
        Book.request_amazon(keyword: "test")
        expect(Book.count).to eq 10
      end
      it "use browse_node_id" do
        expect(Book.count).to eq 0
        Book.request_amazon(browse_node_id: 2250738051)
        expect(Book.count).to eq 10
      end
    end
  end
end
