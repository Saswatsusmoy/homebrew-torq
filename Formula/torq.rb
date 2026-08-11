class Torq < Formula
  desc "Fast torrent finder and downloader"
  homepage "https://github.com/Saswatsusmoy/TorQ"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.5/torq-aarch64-apple-darwin.tar.gz"
      sha256 "83f8ecf5968ea14319d04a3427433893d498f4d2d52324fd35bdfb51eda9e1e4"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.5/torq-x86_64-apple-darwin.tar.gz"
      sha256 "079bd58294638f9d6b88d5629edef2d23cca9aeb2c6fd12f449a055740f1430a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.5/torq-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "897cdb6fd652d31dfe34e2c88878b1c37e601611d6dd5e7b7ce7c2425bf308bd"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.5/torq-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "edc590ad4ac50c398ca3039cd29584847abb85cb0e0cbafd218477d191d0343e"
    end
  end

  def install
    bin.install "torq"
  end

  test do
    assert_match "torq", shell_output("#{bin}/torq --version")
  end
end
