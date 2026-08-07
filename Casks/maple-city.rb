cask "maple-city" do
  arch arm: "-arm64", intel: ""

  version "1.0.0"
  sha256 arm:   "20abcf28bf92434201dd3a40b186a21166d8fe258825c22660a2c588dab482d5",
         intel: "df2bb1a80143c2aa8f6eda7729960156b68ac3548e43d0cb10891568ca770b4f"

  url "https://github.com/droolyai/drooly-desktop/releases/download/v#{version}/Maple.City-#{version}#{arch}.dmg"
  name "Maple City"
  desc "Maple City ($DDD) — digital Toronto game, cross-device multiplayer with web + Solana Seeker"
  homepage "https://drooly.ai/games/ddd"

  app "Maple City.app"

  caveats <<~EOS
    Unsigned build: right-click the app and choose Open on first launch.
  EOS
end
