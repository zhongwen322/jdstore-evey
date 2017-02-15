class ProtfolioController < ApplicationController

def index

end

def show
  @protfolio = Protfolio.find(params[:id])
end


private
def protfolio_params
  params.require(:protfolio).permit(:title)
end

end
