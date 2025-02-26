class Macmon < Formula
  desc "Sudoless performance monitoring CLI tool for Apple Silicon processors"
  homepage "https://github.com/vladkens/macmon"
  version "0.6.0"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/vladkens/macmon/releases/download/v0.6.0/macmon-v0.6.0.tar.gz"
  sha256 "3740d77c52ebb9e455b9d85c36ccd360d4aa8b7ff1cb7de0e8f8d3927a6dadde"

  def install
    bin.install "macmon"
  end

  test do
    system "#{bin}/macmon", "-V"
  end
end
