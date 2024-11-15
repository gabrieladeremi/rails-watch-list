<%= simple_form_for([@list, @bookmark]) do |f| %>
  <%= f.input :comment %>
  <%= f.association :movie %>
  <%= f.submit %>
<% end %>

<div class="bookmarks-container">

</div>

 <br />
  <%= link_to lists_path do%>
    <button type="button" class="btn btn-primary">Back</button>
  <% end %>
