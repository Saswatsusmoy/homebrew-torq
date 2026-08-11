class Torq < Formula
  desc "Fast torrent finder and downloader"
  homepage "https://github.com/Saswatsusmoy/TorQ"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.4/torq-aarch64-apple-darwin.tar.gz"
      sha256 "689a7df79d5b5c51345ea191debb0aeeb7d7a0342f249f797bc693f353ed8494"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.4/torq-x86_64-apple-darwin.tar.gz"
      sha256 "3858ae49f95ecb272ede5912778eac754c3b6bc57969066a9318d3d0c65b47f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.4/torq-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3456486b2fda3f5d4ce466fe46800a19373fabade08fffcdecd3bc19f865a882"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.4/torq-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cbcfa5928affdecd2f513259ae2edc4116f89a5c9b67bef17268eed1d1a2018d"
    end
  end

  def install
    bin.install "torq"
  end

  test do
    assert_match "torq", shell_output("#{bin}/torq --version")
  end
end
