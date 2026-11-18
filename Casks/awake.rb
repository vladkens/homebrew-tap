cask "awake" do
  version "0.1.0"

  on_arm do
    url "https://github.com/vladkens/awake/releases/download/v0.1.0/Awake-v0.1.0-macos-aarch64.dmg"
    sha256 "fb71178a3fe6950dcaaa6eb4d71a5251baf0575dd1baf723b81a2ebffb4ac110"
  end
  on_intel do
    url "https://github.com/vladkens/awake/releases/download/v0.1.0/Awake-v0.1.0-macos-x86_64.dmg"
    sha256 "5535eeabc9f589870c2acb187f0b92fc8639b6c3d27d45d5986f957a84e122b8"
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
    "~/Library/HTTPStorages/me.vladkens.awake",
    "~/Library/Preferences/me.vladkens.awake.plist",
  ]
end
