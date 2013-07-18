child @team => :team do
  attributes :id, :name

  node(:user_ids) do |t|
    t.users.map{ |u| u.id  }
  end

  node(:taco_rule_ids) do |t|
    t.taco_rules.map{ |r| r.id  }
  end

end


