defmodule GallowsWeb.PageView do
  use GallowsWeb, :view

  def plural_of(word, 1), do: {:safe, amount(1) <> word}

  def plural_of(word, val), do: {:safe, amount(val) <> word <> "s"}

  def amount(val) when val < 1 do
    "<span style='color: red'>#{val}</span>&nbsp;"
  end

  def amount(val) do
    "<span style='color: blue'>#{val}</span>&nbsp;"
  end
end
