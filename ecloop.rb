class Ecloop < Formula
  desc "High-performance tool for computing secp256k1 public keys with advanced search features"
  homepage "https://github.com/vladkens/ecloop"
  url "https://github.com/vladkens/ecloop.git", :using => :git
  version "0.3.0"
  license "MIT"

  depends_on "gcc"

  def install
    system "make"
    bin.install "ecloop"
  end

  test do
    system "#{bin}/ecloop", "-v"
  end
end
