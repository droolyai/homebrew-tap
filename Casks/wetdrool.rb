cask "wetdrool" do
  arch arm: "-arm64", intel: ""

  version "1.0.0"
  sha256 arm:   "b94ef2e3c4651a1ecfd37495b12294b3773a89158923285ffd6822a75f2fc14e",
         intel: "387e528fc9bf65a2a6b0490bac4142764c5b8b163958b68e86714a333af97c95"

  url "https://github.com/droolyai/drooly-desktop/releases/download/v#{version}/WetDrool-#{version}#{arch}.dmg"
  name "WetDrool"
  desc "WetDrool 18+ after-dark arena — age gate enforced in-game"
  homepage "https://drooly.ai/games/wetdrool"

  app "WetDrool.app"

  caveats <<~EOS
    18+ only. Unsigned build: right-click the app and choose Open on first launch.
  EOS
end
