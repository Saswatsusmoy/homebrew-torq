class Torq < Formula
  desc "Fast torrent finder and downloader"
  homepage "https://github.com/Saswatsusmoy/TorQ"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.8/torq-aarch64-apple-darwin.tar.gz"
      sha256 "eee8b34e9a37705c1f00099838d68a1d06d88e6c4b378baaae949cf7201e5e3e"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.8/torq-x86_64-apple-darwin.tar.gz"
      sha256 "1e3e064ff14c7f856589b9c89c02e5c1f0c9bb9b15dcb59b5ad962719ce55d2b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.8/torq-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "42b44535ac4698dd6cbdc1d7c1e64f7bd136579fff5d2b9d8f0560d207227a43"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.8/torq-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48f5ae90863ca1e37bfa002e38745d77e027245bebeaec2c2b147ec0d7e1b2dc"
    end
  end

  def install
    bin.install "torq"
  end

  test do
    assert_match "torq", shell_output("#{bin}/torq --version")
  end
end
