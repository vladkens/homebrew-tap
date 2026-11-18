class Wavo < Formula
  desc "Speech-to-text on the GPU: Parakeet, GigaAM, Whisper and Moonshine"
  homepage "https://github.com/vladkens/wavo"
  url "https://github.com/vladkens/wavo/releases/download/v0.6.0/wavo-v0.6.0-aarch64-apple-darwin.tar.gz"
  sha256 "73bef04a24a7984a047146e01855429881c3dd1c70b11391f46cccdd69b9457a"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    on_arm do
      url "https://github.com/vladkens/wavo/releases/download/v0.6.0/wavo-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "df27c56fe43a9857dd3668a1b4191c5d692448912c4e80a5303a254a9d576626"
    end
    on_intel do
      url "https://github.com/vladkens/wavo/releases/download/v0.6.0/wavo-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cbd0a93323bd389e328a19b00c5145fddcd5635e0ea4c3c56d4f157caef74f58"
    end
  end

  def install
    bin.install "wavo"
  end

  def caveats
    on_linux do
      <<~EOS
        wavo runs through Vulkan: it finds the system's loader and driver, not Homebrew's.
        It needs a Vulkan driver and access to the GPU. On Debian or Ubuntu:
          sudo apt install mesa-vulkan-drivers
          sudo usermod -aG render $USER    # then log out and back in
      EOS
    end
  end

  test do
    assert_match "wavo #{version}", shell_output("#{bin}/wavo --version")
  end
end
