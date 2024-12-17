class Macmon < Formula
  desc "Sudoless performance monitoring CLI tool for Apple Silicon processors"
  homepage "https://github.com/vladkens/macmon"
  version "0.4.2"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/vladkens/macmon/releases/download/v0.4.2/macmon-v0.4.2.tar.gz"
  sha256 "a0b2614244ffbb544a543dcec1548762d29fd05b565be9a422f0cf22e1149b46"

  def install
    bin.install "macmon"
  end

  test do
    system "#{bin}/macmon", "-V"
  end
end
