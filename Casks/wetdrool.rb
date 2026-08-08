cask "wetdrool" do
  arch arm: "-arm64", intel: ""

  version "1.0.2"
  sha256 arm:   "412707ade336359c6d2316bf6ed5ec6638059f702475261cdf75f75578cdd73b",
         intel: "e5f491c34a7969adf4723a731bf6a1d3a2db1f6c584308e7a1a6f6f8159ba69f"

  # release tag ships assets named with the app's internal 1.0.0 version
  # string (package.json wasn't rebumped) — url references the tag, not the
  # interpolated filename, so this stays correct across release bumps.
  url "https://github.com/droolyai/drooly-desktop/releases/download/v#{version}/WetDrool-1.0.0#{arch}.dmg"
  name "WetDrool"
  desc "WetDrool 18+ after-dark arena — age gate enforced in-game"
  homepage "https://drooly.ai/games/wetdrool"

  app "WetDrool.app"

  caveats <<~EOS
    18+ only. Unsigned build: right-click the app and choose Open on first launch.
    If macOS says the app "is damaged," run:
      xattr -cr "/Applications/WetDrool.app"
  EOS
end
