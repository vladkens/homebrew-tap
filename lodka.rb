class Lodka < Formula
  desc "Small, fast Docker VM for Apple silicon Macs"
  homepage "https://github.com/vladkens/lodka"
  version "0.0.0"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  url "https://github.com/vladkens/lodka/releases/download/v0.0.0/lodka-v0.0.0-aarch64-apple-darwin.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  def install
    bin.install "lodka"
    (share/"lodka").install "Image", "rootfs.img"
  end

  test do
    system "#{bin}/lodka", "version"
  end
end
