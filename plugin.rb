# name: discourse-sanitize-header-tag
# author: Joe Buhlig
# about: Strips the header markdown conversion
# version: 0.1
# author: Joe Buhlig joebuhlig.com
# url: https://www.github.com/ha-tech/discourse-sanitize-header-tag

module ::PrettyText
  module PrettyTextExtension
    def markdown(text, opts = {})
      
      if text.start_with?("###### ")
        text.sub! "###### ", "&#35\;&#35\;&#35\;&#35\;&#35\;&#35\; "
      end

      if text.start_with?("##### ")
        text.sub! "##### ", "&#35\;&#35\;&#35\;&#35\;&#35\; "
      end      
      
      if text.start_with?("#### ")
        text.sub! "#### ", "&#35\;&#35\;&#35\;&#35\; "
      end

      if text.start_with?("### ")
        text.sub! "### ", "&#35\;&#35\;&#35\; "
      end

      if text.start_with?("## ")
        text.sub! "## ", "&#35\;&#35\; "
      end

      if text.start_with?("# ")
        text.sub! "# ", "&#35\; "
      end

      text.gsub! "\n###### ", "\n&#35\;&#35\;&#35\;&#35\;&#35\;&#35\; "
      text.gsub! "\n##### ", "\n&#35\;&#35\;&#35\;&#35\;&#35\; "
      text.gsub! "\n#### ", "\n&#35\;&#35\;&#35\;&#35\; "
      text.gsub! "\n### ", "\n&#35\;&#35\;&#35\; "
      text.gsub! "\n## ", "\n&#35\;&#35\; "
      text.gsub! "\n# ", "\n&#35\; "

      text.gsub! "<h1>", "&lt;h1&gt;"
      text.gsub! "<h2>", "&lt;h2&gt;"
      text.gsub! "<h3>", "&lt;h3&gt;"
      text.gsub! "<h4>", "&lt;h4&gt;"
      text.gsub! "<h5>", "&lt;h5&gt;"
      text.gsub! "<h6>", "&lt;h6&gt;"

      text.gsub! "</h1>", "&lt;\/h1&gt;"
      text.gsub! "</h2>", "&lt;\/h2&gt;"
      text.gsub! "</h3>", "&lt;\/h3&gt;"
      text.gsub! "</h4>", "&lt;\/h4&gt;"
      text.gsub! "</h5>", "&lt;\/h5&gt;"
      text.gsub! "</h6>", "&lt;\/h6&gt;"   
      
      text.gsub! "\n-----\n", "\n&#45;&#45;&#45;&#45;&#45;\n"
      text.gsub! "\n----\n", "\n&#45;&#45;&#45;&#45;\n"
      text.gsub! "\n---\n", "\n&#45;&#45;&#45;\n"
      text.gsub! "\n--\n", "\n&#45;&#45;\n"
      text.gsub! "\n-\n", "\n&#45;\n"

      text.gsub! "\n----- \n", "\n&#45;&#45;&#45;&#45;&#45;\n"
      text.gsub! "\n---- \n", "\n&#45;&#45;&#45;&#45;\n"
      text.gsub! "\n--- \n", "\n&#45;&#45;&#45;\n"
      text.gsub! "\n-- \n", "\n&#45;&#45;\n"
      text.gsub! "\n- \n", "\n&#45;\n"

      text.gsub! "\n-----  \n", "\n&#45;&#45;&#45;&#45;&#45;\n"
      text.gsub! "\n----  \n", "\n&#45;&#45;&#45;&#45;\n"
      text.gsub! "\n---  \n", "\n&#45;&#45;&#45;\n"
      text.gsub! "\n--  \n", "\n&#45;&#45;\n"
      text.gsub! "\n-  \n", "\n&#45;\n"

      text.gsub! "\n=====\n", "\n&#61;&#61;&#61;&#61;&#61;\n"
      text.gsub! "\n====\n", "\n&#61;&#61;&#61;&#61;\n"
      text.gsub! "\n===\n", "\n&#61;&#61;&#61;\n"
      text.gsub! "\n==\n", "\n&#61;&#61;\n"
      text.gsub! "\n=\n", "\n&#61;\n"

      text.gsub! "\n===== \n", "\n&#61;&#61;&#61;&#61;&#61;\n"
      text.gsub! "\n==== \n", "\n&#61;&#61;&#61;&#61;\n"
      text.gsub! "\n=== \n", "\n&#61;&#61;&#61;\n"
      text.gsub! "\n== \n", "\n&#61;&#61;\n"
      text.gsub! "\n= \n", "\n&#61;\n"

      text.gsub! "\n=====  \n", "\n&#61;&#61;&#61;&#61;&#61;\n"
      text.gsub! "\n====  \n", "\n&#61;&#61;&#61;&#61;\n"
      text.gsub! "\n===  \n", "\n&#61;&#61;&#61;\n"
      text.gsub! "\n==  \n", "\n&#61;&#61;\n"
      text.gsub! "\n=  \n", "\n&#61;\n"
      
      text.gsub! "\n_____\n", "\n&#95;&#95;&#95;&#95;&#95;\n"
      text.gsub! "\n____\n", "\n&#95;&#95;&#95;&#95;\n"
      text.gsub! "\n___\n", "\n&#95;&#95;&#95;\n"
      text.gsub! "\n__\n", "\n&#95;&#95;\n"
      text.gsub! "\n_\n", "\n&#95;\n"

      text.gsub! "\n_____ \n", "\n&#95;&#95;&#95;&#95;&#95;\n"
      text.gsub! "\n____ \n", "\n&#95;&#95;&#95;&#95;\n"
      text.gsub! "\n___ \n", "\n&#95;&#95;&#95;\n"
      text.gsub! "\n__ \n", "\n&#95;&#95;\n"
      text.gsub! "\n_ \n", "\n&#95;\n"

      text.gsub! "\n_____  \n", "\n&#95;&#95;&#95;&#95;&#95;\n"
      text.gsub! "\n____  \n", "\n&#95;&#95;&#95;&#95;\n"
      text.gsub! "\n___  \n", "\n&#95;&#95;&#95;\n"
      text.gsub! "\n__  \n", "\n&#95;&#95;\n"
      text.gsub! "\n_  \n", "\n&#95;\n"
      
      text.gsub! "\n*****\n", "\n&#42;&#42;&#42;&#42;&#42;\n"
      text.gsub! "\n****\n", "\n&#42;&#42;&#42;&#42;\n"
      text.gsub! "\n***\n", "\n&#42;&#42;&#42;\n"
      text.gsub! "\n**\n", "\n&#42;&#42;\n"
      text.gsub! "\n*\n", "\n&#42;\n"

      text.gsub! "\n***** \n", "\n&#42;&#42;&#42;&#42;&#42;\n"
      text.gsub! "\n**** \n", "\n&#42;&#42;&#42;&#42;\n"
      text.gsub! "\n*** \n", "\n&#42;&#42;&#42;\n"
      text.gsub! "\n** \n", "\n&#42;&#42;\n"
      text.gsub! "\n* \n", "\n&#42;\n"

      text.gsub! "\n*****  \n", "\n&#42;&#42;&#42;&#42;&#42;\n"
      text.gsub! "\n****  \n", "\n&#42;&#42;&#42;&#42;\n"
      text.gsub! "\n***  \n", "\n&#42;&#42;&#42;\n"
      text.gsub! "\n**  \n", "\n&#42;&#42;\n"
      text.gsub! "\n*  \n", "\n&#42;\n"
      
      original = super(text, opts)

      original
    end
  end
  singleton_class.prepend PrettyTextExtension
end