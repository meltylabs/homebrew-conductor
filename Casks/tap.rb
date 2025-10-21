cask "tap" do
  arch arm: "aarch64", intel: "x86_64"

  version :latest
  sha256 :no_check

  url "https://cdn.crabnebula.app/download/melty/conductor/latest/platform/dmg-#{arch}",
      verified: "cdn.crabnebula.app/download/melty/conductor/"
  name "Conductor"
  desc "Mac app that lets you run coding agents in parallel"
  homepage "https://conductor.build/"

  livecheck do
    url "https://cdn.crabnebula.app/update/melty/conductor/darwin-#{arch}/0.0.0"
    strategy :json do |json|
      json["version"]
    end
  end

  app "Conductor.app"

  zap trash: [
    "~/Library/Application Support/com.conductor.app",
    "~/Library/Caches/com.conductor.app",
    "~/Library/Preferences/com.conductor.app.plist",
    "~/Library/Saved Application State/com.conductor.app.savedState",
  ]
end
