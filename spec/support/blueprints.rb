require 'machinist/active_record'

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end



Round.blueprint do
  # Attributes here
end

Game.blueprint do
  home_team_name {'Real Madrid'}
  away_team_name {'Barcelona'}
end

Column.blueprint do
  # Attributes here
end

ColumnGame.blueprint do
  # Attributes here
end
