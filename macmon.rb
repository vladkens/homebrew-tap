class Macmon < Formula
  desc "Sudoless performance monitoring CLI tool for Apple Silicon processors"
  homepage "https://github.com/vladkens/macmon"
  version "0.2.0"
  depends_on macos: :monterey

  on_arm do
    url "https://github.com/vladkens/macmon/releases/download/v0.2.0/macmon-v0.2.0.tar.gz"
    sha256 "b2fc31883a30a8fdc09a922edc8d71e6ad5df40051d1dc5f86e80aece40c54e8"

    def install
      bin.install "macmon"
    end
  end
end
