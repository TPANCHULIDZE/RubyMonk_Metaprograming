editor = Editor.new("class Foo; end")

def auto_complete(editor)
	editor.cursor.read do |word|
    if word == "\n"
      throw :eol
    end
      if editor.template.user_classes.include? word
        list = Module.const_get(word.to_s).methods
        build_suggestion(list)
      end
        
      if editor.template.context.methods.include? word
        list = editor.template.context.method(word).parameters
        build_suggestion(list)
      end
    # define the other two filters like the above. 
	end
end

# This takes an Array of suggestions and displays them.
# It could either be an Array of methods, like the ones returned
# by Object#methods or an Array returned by Method#parameters.
def build_suggestion(list)
  Suggestion.new(list).display
end