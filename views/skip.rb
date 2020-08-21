<h1 style="color:green">
  <%= @game.current_turn.name %>
</h1> 
<h2>
  rested and did not attack.
</h2>
<br>
<br>
<br>
<%= @game.player_1.name %>: <%= @game.player_1.hit_points %>HP
<br>
<%= @game.player_2.name %>: <%= @game.player_2.hit_points %>HP
<br>
<br>
<br>
<form action="/play">
  <input type="submit" value="OK">
</form>