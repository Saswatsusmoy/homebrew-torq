class Torq < Formula
  desc "Fast torrent finder and downloader"
  homepage "https://github.com/Saswatsusmoy/TorQ"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.3/torq-aarch64-apple-darwin.tar.gz"
      sha256 "2afd6037a9cbaaa1df10f26870c3263974ea606dc4ee95699a4827be0b19c5d1"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.3/torq-x86_64-apple-darwin.tar.gz"
      sha256 "c4b591ed2fd4521a0ff9f046d8ad294c9f4b02800fc8111c485c953e8d660fee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.3/torq-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "47697554c1d9b29b6e443f559ce207e602123443069226952d16b7efc748f845"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.3/torq-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d11390ebe436c75317b5bd4185fb97cea88ed911365dac4663c6984a9e26683b"
    end
  end

  def install
    bin.install "torq"
  end

  test do
    assert_match "torq", shell_output("#{bin}/torq --version")
  end
end
