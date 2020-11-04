defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cards.create_deck()
      ["Ace", "Two", "Three"]

  """
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamond"]

    for  suit <- suits, value <- values do
        "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, hand) do
    Enum.member?(deck, hand)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size);
  end
end

# Cards.deal(deck, 5) # {*hand*, *deck*}
