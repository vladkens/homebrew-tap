class Macmon < Formula
  desc "Sudoless performance monitoring CLI tool for Apple Silicon processors"
  homepage "https://github.com/vladkens/macmon"
  version "0.12.1"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/vladkens/macmon/releases/download/v0.12.1/macmon-v0.12.1-aarch64-apple-darwin.tar.gz"
  sha256 "93e37628f57023aaf51147d32aeead6fa7ba092bf85bda86581a78e826e0d6fb"

  def install
    bin.install "macmon"
  end

  test do
    system "#{bin}/macmon", "-V"
  end
end
