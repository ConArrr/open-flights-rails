module Api
  module V1
    class AirlinesController < ApplicationController
      def index
        airlines = Airline.all
        render json: to_json(airlines)
      end

      private

      def options
        @options ||= { include: %i[reviews] }
      end

      def to_json(data)
        AirlineSerializer.new(data, options).serialized_json
      end
    end
  end
end