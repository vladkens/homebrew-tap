cask "awake" do
  version "0.0.0"

  on_arm do
    url "https://github.com/vladkens/awake/releases/download/v0.0.0/Awake-v0.0.0-macos-aarch64.dmg"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end
  on_intel do
    url "https://github.com/vladkens/awake/releases/download/v0.0.0/Awake-v0.0.0-macos-x86_64.dmg"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  name "Awake"
  desc "Keeps the computer awake from the menu bar"
  homepage "https://github.com/vladkens/awake"

  auto_updates true
  depends_on macos: :ventura

  app "Awake.app"
  binary "#{appdir}/Awake.app/Contents/MacOS/awake"

  uninstall quit: "me.vladkens.awake"

  zap trash: [
    "~/Library/Application Support/me.vladkens.awake",
    "~/Library/Preferences/me.vladkens.awake.plist",
  ]
end
