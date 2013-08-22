class TestingController < ApplicationController

 def demo
  end

 def example
 	@random = MapItem.all
 	@points = MapPoint.all
 end

  

end
