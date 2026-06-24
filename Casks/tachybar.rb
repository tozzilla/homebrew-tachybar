cask "tachybar" do
  version "1.2.0"
  sha256 "7eafd558e13be623fa8cb78efd452bbd66d60b7ac71762ad46b7ee5f750fb4fb"

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
