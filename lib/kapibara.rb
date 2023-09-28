class SearchTool
  def initialize(keywords)
    @keywords = keywords
  end

  def search(text)
    results = {text: text,
                alerts: [] }
    @keywords.each do |keyword|
      count = text.downcase.scan(keyword.downcase).size
      context = findContext(text, keyword)
      results[:alerts] << { word: keyword, count: count, context: context} if count > 0
    end
    results
  end

  private

  def findContext(text, keyword)
    clean_text = text.gsub(/[[:punct:]]/, ' ')
    words = clean_text.split
    keyword_index = words.index(keyword)

  if keyword_index
    start_index = [0, keyword_index - 3].max
    end_index = [words.length - 1, keyword_index + 3].min
    context = words[start_index..end_index].join(' ')
    return context
  else
    return nil
  end
  end
end

