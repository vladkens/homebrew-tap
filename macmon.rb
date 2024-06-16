class Macmon < Formula
  desc "Sudoless performance monitoring CLI tool for Apple Silicon processors"
  homepage "https://github.com/vladkens/macmon"
  version "0.1.0"
  depends_on macos: :monterey

  on_arm do
    url "https://github.com/vladkens/macmon/releases/download/v0.1.0/macmon-v0.1.0.tar.gz"
    sha256 "a12d879fbb05c36031c2cb3f47038cd34d1a39e9cfe802d729732f052da88e51"

    def install
      bin.install "macmon"
    end
  end
end
