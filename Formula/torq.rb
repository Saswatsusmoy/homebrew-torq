class Torq < Formula
  desc "Fast torrent finder and downloader"
  homepage "https://github.com/Saswatsusmoy/TorQ"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.1/torq-aarch64-apple-darwin.tar.gz"
      sha256 "8cc187fba92d204c1d2f73b16a9661a60ba4211ee7ede78e7650311df351cf44"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.1/torq-x86_64-apple-darwin.tar.gz"
      sha256 "3faccd3dfdda0b617da4d2a440f3f2714f06eb57c9606653353a6e97f3f90af7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.1/torq-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1534499d89001618d8a14799311755f88b7470c5d9e754ec7c616e2ff845d90c"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.1/torq-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "04cd50a5908e917e348f4b1f631e1518ff1c6797faeb486dc35651664ad507e0"
    end
  end

  def install
    bin.install "torq"
  end

  test do
    assert_match "torq", shell_output("#{bin}/torq --version")
  end
end
