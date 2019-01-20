class PaginationHelper

  attr_accessor :collection, :items_per_page

  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
  end

  def item_count
    collection.size
  end

  def page_count
    collection.length.fdiv(items_per_page).ceil
  end

  def page_item_count(page_index)
    return -1 if collection.each_slice(items_per_page).to_a[page_index].nil?
    collection.each_slice(items_per_page).to_a[page_index].size
  end

  def page_index(item_index)
    return -1 if (item_count - 1) < item_index || item_index < 0
    item_index.fdiv(items_per_page).ceil - 1
  end
end
