class Macmon < Formula
  desc "Sudoless performance monitoring CLI tool for Apple Silicon processors"
  homepage "https://github.com/vladkens/macmon"
  version "0.0.0"
  depends_on macos: :monterey

  on_arm do
    url "https://github.com/vladkens/abc/releases/download/v0.0.0/macmon-v0.0.0.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"

    def install
      bin.install "macmon"
    end
  end
end
