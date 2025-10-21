cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  version :latest
  sha256 :no_check

  url "https://cdn.crabnebula.app/download/melty/conductor/latest/platform/dmg-#{arch}",
      verified: "cdn.crabnebula.app/download/melty/conductor/"
  name "Conductor"
  desc "Mac app that lets you run coding agents in parallel"
  homepage "https://conductor.build/"

  app "Conductor.app"

  zap trash: [
    "~/Library/Application Support/com.conductor.app",
    "~/Library/Caches/com.conductor.app",
    "~/Library/Preferences/com.conductor.app.plist",
    "~/Library/Saved Application State/com.conductor.app.savedState",
  ]
end
