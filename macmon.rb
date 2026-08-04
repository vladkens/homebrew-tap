class Macmon < Formula
  desc "Sudoless performance monitoring CLI tool for Apple Silicon processors"
  homepage "https://github.com/vladkens/macmon"
  version "0.8.2"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/vladkens/macmon/releases/download/v0.8.2/macmon-v0.8.2.tar.gz"
  sha256 "588d5bde79885ba36f693e5150911c10c3ad208a2e418a3f2aa827ac84a2d973"

  def install
    bin.install "macmon"
  end

  test do
    system "#{bin}/macmon", "-V"
  end
end
