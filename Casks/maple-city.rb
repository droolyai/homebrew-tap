cask "maple-city" do
  arch arm: "-arm64", intel: ""

  version "1.0.2"
  sha256 arm:   "0caf5f926c8a351c276b9ab813251f0f18bdeb02401cc3ccfc6fe999b2a91c88",
         intel: "8cba374204a108f15aa4208339ec2f7bcae40888d6056fe56483b5f44f926944"

  # release tag ships assets named with the app's internal 1.0.0 version
  # string (package.json wasn't rebumped) — url references the tag, not the
  # interpolated filename, so this stays correct across release bumps.
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
