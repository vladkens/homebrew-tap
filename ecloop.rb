class Ecloop < Formula
  desc "High-performance tool for computing secp256k1 public keys with advanced search features"
  homepage "https://github.com/vladkens/ecloop"
  license "MIT"
  url "https://github.com/vladkens/ecloop.git",
    tag:      "v0.3.0",
    revision: "c9eb9ee07398cbc33f8a9aa5ffe0b03022814aae"
  version "0.3.0"

  def install
    system "make"
    bin.install "ecloop"
  end

  test do
    system "#{bin}/ecloop", "-v"
  end
end
