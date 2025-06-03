class Ecloop < Formula
  desc "High-performance tool for computing secp256k1 public keys with advanced search features"
  homepage "https://github.com/vladkens/ecloop"
  version "0.5.0"
  license "MIT"
  
  url "https://github.com/vladkens/ecloop.git",
    tag:      "v0.5.0",
    revision: "75cd5c04fb2eed6485fd833d591f2f12bc6c474d"

  def install
    system "make"
    bin.install "ecloop"
  end

  test do
    system "#{bin}/ecloop", "-v"
  end
end
