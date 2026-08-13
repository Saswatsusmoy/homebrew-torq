class Torq < Formula
  desc "Fast torrent finder and downloader"
  homepage "https://github.com/Saswatsusmoy/TorQ"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.9/torq-aarch64-apple-darwin.tar.gz"
      sha256 "adeb7dfc6c74efed411a3f110e3f29d5d5fcb07acbdc41da6eeb516f517c272e"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.9/torq-x86_64-apple-darwin.tar.gz"
      sha256 "20bf460767ada42797e4095faee7bb94a5b39d0a596f24a33ac2f04ca3e9b2dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.9/torq-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2b491ab8889e241069dbb265a407b6e23a2a32a16ca699e59af4b4f7290d9d41"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.9/torq-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c0ba6742fa9e896bd087f42523886ebc9fcc1381bc44fc46457e695fb78ca2a"
    end
  end

  def install
    bin.install "torq"
  end

  test do
    assert_match "torq", shell_output("#{bin}/torq --version")
  end
end
