require './katas/pagination_helper/lib/pagination_helper'

RSpec.describe PaginationHelper do
  subject { described_class.new(collection, items_per_page) }
  let(:collection) { %w(a b c d e f) }
  let(:items_per_page) { 4 }

  describe "#page_count" do

    it "returns number of pages for collection" do
      expect(subject.page_count).to eq(2)
    end
  end

  describe "#item_count" do

    it "returns number of items in the collection" do
      expect(subject.item_count).to eq(6)
    end
  end

  describe "#page_item_count" do

    context "when items on page with specified index" do

      it "returns count of items in specified page" do
        expect(subject.page_item_count(0)).to eq(4)
        expect(subject.page_item_count(1)).to eq(2)
      end
    end

    context "when no items on page with specified index" do

      it "returns -1" do
        expect(subject.page_item_count(2)).to eq(-1)
      end
    end
  end

  describe "#page_index" do

    context "when item index can be found on any of pages" do

      it "returns page number item with specified index belongs to" do
        expect(subject.page_index(5)).to eq(1)
        expect(subject.page_index(2)).to eq(0)
      end
    end

    context "when negative item index specified" do

      it "returns -1" do
        expect(subject.page_index(-10)).to eq(-1)
      end
    end

    context "when item index cannot be found on any of pages" do

      it "returns -1" do
        expect(subject.page_index(10)).to eq(-1)
      end
    end
  end
end
