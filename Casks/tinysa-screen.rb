cask "tinysa-screen" do
  version "1.2.0"
  sha256 "82c00dcf85dc7bf47b33e00d57aa31e31f223c100f5bf6c4ec3a0278cfbb6c63"

  url "https://github.com/tolgabalci/tinysa-screen/releases/download/v#{version}/tinySA-Screen-#{version}.zip"
  name "tinySA Screen"
  desc "Live screen of a tinySA spectrum analyzer, with GIFs, bands and a command line"
  homepage "https://github.com/tolgabalci/tinysa-screen"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "tinySA Screen.app"
  binary "#{appdir}/tinySA Screen.app/Contents/MacOS/tinysa-screen"

  zap trash: [
    "~/Library/Caches/tinySA Screen",
    "~/Library/Preferences/io.github.tolgabalci.tinysa-screen.plist",
    "~/Library/Saved Application State/io.github.tolgabalci.tinysa-screen.savedState",
  ]
end
