class Macmon < Formula
  desc "Sudoless performance monitoring CLI tool for Apple Silicon processors"
  homepage "https://github.com/vladkens/macmon"
  version "0.3.0"
  depends_on macos: :monterey

  on_arm do
    url "https://github.com/vladkens/macmon/releases/download/v0.3.0/macmon-v0.3.0.tar.gz"
    sha256 "ae42d998efc4329d9a53859f8a19bb26c649b07ed9c66414504ead98ead6bc9e"

    def install
      bin.install "macmon"
    end
  end
end
