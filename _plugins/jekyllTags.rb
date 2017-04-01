# Footnote tag
class Footnote < Liquid::Tag
  def initialize(tag_name, input, tokens)
    super
    @input = input
  end

  def lookup(context, name)
    lookup = context
    name.split(".").each { |value| lookup = lookup[value] }
    lookup
  end

  def render(context)
    input_split = split_params(@input)
    index = input_split[0].strip
    note = input_split[1].strip
    return "<span class=\"ref\"><span class=\"refnum\">[#{index}]</span><span class=\"refbody\">#{note}</span></span>"
  end
  
  def split_params(params)
    params.split("|")
  end
end

Liquid::Template.register_tag('_footnote', Footnote)


# Centered, scaled image
class Image < Liquid::Tag
  def initialize(tag_name, input, tokens)
    super
    @input = input
  end

  def lookup(context, name)
    lookup = context
    name.split(".").each { |value| lookup = lookup[value] }
    lookup
  end

  def render(context)
    input_split = split_params(@input)
    image = input_split[0].strip
    note = input_split[1].strip
    return "<div style=\"text-align: center; padding-top: 70px; padding-bottom: 70px\">
<img src=\"#{image}\" title=\"#{note}\" class=\"img-thumbnail\">
</div>"
  end
  
  def split_params(params)
    params.split("|")
  end
end

Liquid::Template.register_tag('_image', Image)

# YouTube video
class YouTubeVid < Liquid::Tag
  def initialize(tag_name, input, tokens)
    super
    @input = input
  end

  def lookup(context, name)
    lookup = context
    name.split(".").each { |value| lookup = lookup[value] }
    lookup
  end

  def render(context)
    return "<div class=\"embed-responsive embed-responsive-16by9\" >
<iframe class=\"embed-responsive-item\"  src=#{@input}></iframe></div>"
  end
  
  def split_params(params)
    params.split("|")
  end
end

Liquid::Template.register_tag('_youtube', YouTubeVid)

# Images side-by-side
class ThreeImages < Liquid::Tag
  def initialize(tag_name, input, tokens)
    super
    @input = input
  end

  def lookup(context, name)
    lookup = context
    name.split(".").each { |value| lookup = lookup[value] }
    lookup
  end

  def render(context)
    input_split = split_params(@input)
    image1 = input_split[0].strip
    image1note = input_split[1].strip
    image2 = input_split[2].strip
    image2note = input_split[3].strip
    image3 = input_split[4].strip
    image3note = input_split[5].strip
    return "<div class=\"row\" style=\"text-align: center; padding-top: 50px; padding-bottom: 50px\">   <div class=\"col-xs-4 col-sm-4 col-md-4col-lg-4\">  <img src=\"#{image1}\" title=\"#{image1note}\" class=\"img-thumbnail\">  </div>  <div class=\"col-xs-4 col-sm-4 col-md-4col-lg-4\"> <img src=\"#{image2}\" title=\"#{image2note}\" class=\"img-thumbnail\">  </div>  <div class=\"col-xs-4 col-sm-4 col-md-4 col-lg-4\"><img src=\"#{image3}\" title=\"#{image3note}\" class=\"img-thumbnail\">  </div>
</div>"
  end
  
  def split_params(params)
    params.split("|")
  end
end

Liquid::Template.register_tag('_threeImages', ThreeImages)

