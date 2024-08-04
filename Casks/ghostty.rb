cask "ghostty" do
  version "6792"
  sha256 "e0a9a9a14b8247c670ce29890ba52328e7cc8047a1767cce5c6f6678bd4baaa1"

  url "https://tip.files.ghostty.dev/#{version}/ghostty-macos-universal.zip"
  name "Ghostty"
  desc "Terminal emulator"
  homepage "https://ghostty.dev/"

  livecheck do
    url "https://tip.files.ghostty.dev/appcast.xml"
    strategy :sparkle, &:version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Ghostty.app"
  binary "#{appdir}/Ghostty.app/Contents/MacOS/ghostty"
end
