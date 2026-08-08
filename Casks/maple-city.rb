cask "maple-city" do
  arch arm: "-arm64", intel: ""

  version "1.0.1"
  sha256 arm:   "ce8367df23f5ed6ae6a4b4d1bccfab3d1326b43702808b71dffbe6141a6da3e1",
         intel: "b8407f2feef0f0f83a005e538210cfb5a68106f4b0a4b2c2904ac4f55f1a5e0d"

  # v1.0.1 release tag ships assets still named with the app's internal 1.0.0
  # version string (package.json wasn't rebumped) — url references the tag,
  # not the interpolated filename, so this stays correct either way.
  url "https://github.com/droolyai/drooly-desktop/releases/download/v#{version}/Maple.City-1.0.0#{arch}.dmg"
  name "Maple City"
  desc "Maple City ($DDD) — digital Toronto game, cross-device multiplayer with web + Solana Seeker"
  homepage "https://drooly.ai/games/ddd"

  app "Maple City.app"

  caveats <<~EOS
    Unsigned build: right-click the app and choose Open on first launch.
    If macOS says the app "is damaged," run:
      xattr -cr "/Applications/Maple City.app"
  EOS
end
