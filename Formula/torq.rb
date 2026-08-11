class Torq < Formula
  desc "Fast torrent finder and downloader"
  homepage "https://github.com/Saswatsusmoy/TorQ"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.0/torq-aarch64-apple-darwin.tar.gz"
      sha256 "39713cf5fb0b2c5f8db25b8094ba03244af084f1e24dd9d8194027d9786bd2fc"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.0/torq-x86_64-apple-darwin.tar.gz"
      sha256 "5e13cd99c7bb6a7fcc69e183901ef517ef4d6713b273ca182404ad769a4d2e3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.0/torq-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "596ee6e941e947d77a45f511dd072ef311b2cd59d104965bbc989226f4203371"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.0/torq-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "63a0330e0f3f2da567ddf8758b154322e363b4e52dc8fd586d39150477e40625"
    end
  end

  def install
    bin.install "torq"
  end

  test do
    assert_match "torq", shell_output("#{bin}/torq --version")
  end
end
