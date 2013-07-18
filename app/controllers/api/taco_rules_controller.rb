class Api::TacoRulesController < Api::BaseController
  def create
    @taco_rule = TacoRule.create! taco_rules_params
  end

  def destroy
    TacoRule.find(params[:id]).destroy
    render status: :ok, nothing: true
  end

  def update
    @taco_rule = TacoRule.find(params[:id])
    @taco_rule.update taco_rules_params
  end

  def index
    if params[:ids]
      @taco_rules = TacoRule.find(params[:ids].split(','))
    else
      @taco_rules = TacoRule.all
    end
  end

  private

  def taco_rules_params
    params.require(:taco_rule).permit(:team_id, :description)
  end
end
