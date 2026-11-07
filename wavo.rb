class Wavo < Formula
  desc "Speech-to-text on the GPU: Parakeet, GigaAM, Whisper and Moonshine"
  homepage "https://github.com/vladkens/wavo"
  url "https://github.com/vladkens/wavo/releases/download/v0.4.0/wavo-v0.4.0-aarch64-apple-darwin.tar.gz"
  sha256 "f989e9a229ef2449a0468e7d9895bde88a3e2ce6697c2a2af25ae54be95682ed"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    on_arm do
      url "https://github.com/vladkens/wavo/releases/download/v0.4.0/wavo-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ef32c79161be489ce4d0b465ed644aa02cf4b5abbd271ad7cdfa43f384d8034"
    end
    on_intel do
      url "https://github.com/vladkens/wavo/releases/download/v0.4.0/wavo-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6dfcad395b73b09ac2b110d0342286f84c23980c4e5dea1fe0df67ce1fe09f12"
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
