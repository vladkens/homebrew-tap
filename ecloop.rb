class Ecloop < Formula
  desc "High-performance tool for computing secp256k1 public keys with advanced search features"
  homepage "https://github.com/vladkens/ecloop"
  license "MIT"
  url "https://github.com/vladkens/ecloop.git",
    tag:      "v0.4.0",
    revision: "2543df0f7c1e1128c509bd9e6d26486625dbb432"
  version "0.4.0"

  def install
    system "make"
    bin.install "ecloop"
  end

  test do
    system "#{bin}/ecloop", "-v"
  end
end
