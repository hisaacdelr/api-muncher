class Recipe

  attr_reader :name, :id, :url, :ingredients, :dietary_info, :health_info, :image, :source, :yield

  def initialize(name:, id:, url:, ingredients:, **options) #**options = options = {}
    raise ArgumentError if name.blank? || url.blank? || ingredients.blank?

    @name = name
    @id = id
    @url = url
    @ingredients = ingredients

    @dietary_info = options[:dietary_info]
    @health_info = options[:health_info]
    @image = options[:image]
    @source = options[:source]
    @yield = options[:yield]

  end
end

# uri	string
# label	string X
# image	string
# source	string
# url	string X
# yield	integer
# calories	float
# totalWeight	float
# ingredients	Ingredient[] X
# totalNutrients	NutrientInfo[]
# totalDaily	NutrientInfo[]
# dietLabels	enum[] X
# healthLabels	enum[]
