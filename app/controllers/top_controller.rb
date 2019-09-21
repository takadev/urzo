class TopController < ApplicationController
    def index
        logger.debug("TEST!!!!")
        @test = [0..24]
        logger.debug(@test)
        logger.debug(@test.to_a)
        @test2 = (0..24)
        logger.debug(@test2)
        logger.debug(@test2.to_a)
    end
end
