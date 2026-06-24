cask "claudebar" do
  version "1.1.0"
  sha256 "f9fd7cecd5043f896c0ac8e08063ae700beea0c71513d01bfb3d7d818fe64579"

  url "https://github.com/tozzilla/claudebar/releases/download/v#{version}/ClaudeBar-#{version}.zip"
  name "ClaudeBar"
  desc "Menu bar app showing live Claude usage (session/weekly limits, resets, credits)"
  homepage "https://github.com/tozzilla/claudebar"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "ClaudeBar.app"

  zap trash: [
    "~/Library/Preferences/app.claudebar.menubar.plist",
  ]
end
