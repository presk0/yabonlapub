class FundersController < ApplicationController
    def index
        @funders =Funder.all
    end
end
