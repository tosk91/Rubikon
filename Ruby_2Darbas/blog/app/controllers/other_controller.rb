class OtherController < ApplicationController
  def data
    @page_title = 'Data'
  end

  before_action :text?

  def text?
    @textas = ('miega ' * 15)
  end
end
