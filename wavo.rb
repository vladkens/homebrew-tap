class Wavo < Formula
  desc "Speech-to-text on the GPU: Parakeet, GigaAM, Whisper and Moonshine"
  homepage "https://github.com/vladkens/wavo"
  url "https://github.com/vladkens/wavo/releases/download/v0.5.0/wavo-v0.5.0-aarch64-apple-darwin.tar.gz"
  sha256 "3a7b629352ca85efd85b091d1706c5a6e81c2dd9134aa0b6d8016c1f8456f024"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    on_arm do
      url "https://github.com/vladkens/wavo/releases/download/v0.5.0/wavo-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "74dc86885d99238ea1ff6f26c04d72b0d527dd746170d4971aadd7690890df80"
    end
    on_intel do
      url "https://github.com/vladkens/wavo/releases/download/v0.5.0/wavo-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97b427de9a6128fd66b0a6a4815d3bd10d00624144f18dbbe005c95280fa53a4"
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
