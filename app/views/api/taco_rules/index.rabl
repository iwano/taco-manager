object false
child @taco_rules => :taco_rules do
  attributes :id, :description, :updated_at
  node(:team_id) { |t| t.team.id }
end
