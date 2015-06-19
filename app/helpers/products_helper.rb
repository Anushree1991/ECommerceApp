module ProductsHelper
  def categories_select
    Category.all.collect{|category| [category.name, category.id]}
  end
end
