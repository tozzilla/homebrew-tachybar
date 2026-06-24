cask "tachybar" do
  version "1.1.1"
  sha256 "73e680202b6126b3c77b9a377bbb3f20b45a501464945b24fe896b63cfc4f3ad"

  url "https://github.com/tozzilla/tachybar/releases/download/v#{version}/TachyBar-#{version}.zip"
  name "TachyBar for AI"
  desc "Menu bar app showing live Claude usage (session/weekly limits, resets, credits)"
  homepage "https://github.com/tozzilla/tachybar"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "TachyBar.app"

  zap trash: [
    "~/Library/Preferences/app.tachybar.menubar.plist",
  ]
end
