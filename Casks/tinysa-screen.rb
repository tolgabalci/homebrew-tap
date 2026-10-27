cask "tinysa-screen" do
  version "1.3.2"
  sha256 "9fd75004b83ca4e789084221ac099eb82329060f7a48b8222b0c3586bcdec5e1"

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
