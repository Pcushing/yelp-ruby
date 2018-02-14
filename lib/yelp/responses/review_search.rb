require 'yelp/responses/base'
require 'yelp/responses/models/review'

module Yelp
  module Response
    class ReviewSearch < Base
      attr_reader :reviews

      def initialize(json)
        super (json)

        @reviews = parse(@reviews, Model::Review)
      end
    end
  end
end
