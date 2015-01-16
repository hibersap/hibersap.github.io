module Awestruct
  module Extensions
    module ReadMore
      def truncate(content)
        index = content.index("pass::[more]")
        if index != nil
            if index > -1
                return content[0..index-1]
            end
        end
        return content
      end
      def filter(content)
        index = content.index("pass::[more]")
        if index != nil
            if index > -1
                content[index..index+11]= ""
            end
        end
        content
      end
      def hasMore(content)
        index = content.index("pass::[more]")
        if index != nil
            return true
        end
        return false
      end
    end
  end
end