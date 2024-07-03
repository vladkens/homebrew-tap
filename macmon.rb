class Macmon < Formula
  desc "Sudoless performance monitoring CLI tool for Apple Silicon processors"
  homepage "https://github.com/vladkens/macmon"
  version "0.2.2"
  depends_on macos: :monterey

  on_arm do
    url "https://github.com/vladkens/macmon/releases/download/v0.2.2/macmon-v0.2.2.tar.gz"
    sha256 "263b59b931d652529615c849d19b9779fb14972031d3b674fe2910b2ea114519"

    def install
      bin.install "macmon"
    end
  end
end
