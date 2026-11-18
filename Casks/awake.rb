cask "awake" do
  version "0.2.0"

  on_arm do
    url "https://github.com/vladkens/awake/releases/download/v0.2.0/Awake-v0.2.0-macos-aarch64.dmg"
    sha256 "9d3e12189241d8a20b58b70792ee82289996e69cf5cd5fc37dab68ed3d88292e"
  end
  on_intel do
    url "https://github.com/vladkens/awake/releases/download/v0.2.0/Awake-v0.2.0-macos-x86_64.dmg"
    sha256 "90db870c0038967e235a69d58d9c4c5202bd0bed0234d82c1ac232b6f360b60a"
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
