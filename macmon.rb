class Macmon < Formula
  desc "Sudoless performance monitoring CLI tool for Apple Silicon processors"
  homepage "https://github.com/vladkens/macmon"
  version "0.12.0"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/vladkens/macmon/releases/download/v0.12.0/macmon-v0.12.0-aarch64-apple-darwin.tar.gz"
  sha256 "cd5a701f8537072aee93eba686bc582897bd00d826f62146b32c8a8d2654641a"

  def install
    bin.install "macmon"
  end

  test do
    system "#{bin}/macmon", "-V"
  end
end
