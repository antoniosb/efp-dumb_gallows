defmodule Exercises do
  def format do
    shopping = [
      {"1 dozen", "eggs"},
      {"1 ripe", "melon"},
      {"4", "apples"},
      {"2 boxes", "tea"}
    ]

    template = """
    quantity | item
    --------------------
    <%= for {qty, i} <- items do %><%= String.pad_leading(qty, 8) %> | <%= i %>
    <% end %>
    """

    EEx.eval_string(template, items: shopping, trim: true)
  end
end
