class Macmon < Formula
  desc "Sudoless performance monitoring CLI tool for Apple Silicon processors"
  homepage "https://github.com/vladkens/macmon"
  version "0.7.0"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/vladkens/macmon/releases/download/v0.7.0/macmon-v0.7.0.tar.gz"
  sha256 "e6052137579076c1652eac3f01378bf589cd17d6e7b961107f7734cfa56725e1"

  def install
    bin.install "macmon"
  end

  test do
    system "#{bin}/macmon", "-V"
  end
end
