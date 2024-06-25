class Macmon < Formula
  desc "Sudoless performance monitoring CLI tool for Apple Silicon processors"
  homepage "https://github.com/vladkens/macmon"
  version "0.2.1"
  depends_on macos: :monterey

  on_arm do
    url "https://github.com/vladkens/macmon/releases/download/v0.2.1/macmon-v0.2.1.tar.gz"
    sha256 "4aa617b8dd6768b2d26f0f6942880ad830a33b96af5d0e6ad33a311c92aec498"

    def install
      bin.install "macmon"
    end
  end
end
