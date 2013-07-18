object false
child @taco_rules => :taco_rules do
  attributes :id, :description
  node(:team_id) { |t| t.team.id }
end
