cask "wetdrool" do
  arch arm: "-arm64", intel: ""

  version "1.0.1"
  sha256 arm:   "b5f529e9c09ce0d91867b9f3646915a049c78167efcf6ace23aa1c0c4160f338",
         intel: "e248e7efb40e5a8bb18f7d0389d87c0442c6e223ed8052962ff1ad33aa70dc8b"

  # v1.0.1 release tag ships assets still named with the app's internal 1.0.0
  # version string (package.json wasn't rebumped) — url references the tag,
  # not the interpolated filename, so this stays correct either way.
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
