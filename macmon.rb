class Macmon < Formula
  desc "Sudoless performance monitoring CLI tool for Apple Silicon processors"
  homepage "https://github.com/vladkens/macmon"
  version "0.11.0"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/vladkens/macmon/releases/download/v0.11.0/macmon-v0.11.0-aarch64-apple-darwin.tar.gz"
  sha256 "51a3fc694f303fc6ad3904423be7c0437b3133b3359d2986b4066cbf5753c4f1"

  def install
    bin.install "macmon"
  end

  test do
    system "#{bin}/macmon", "-V"
  end
end
