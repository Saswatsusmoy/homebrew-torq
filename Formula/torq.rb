class Torq < Formula
  desc "Fast torrent finder and downloader"
  homepage "https://github.com/Saswatsusmoy/TorQ"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.10/torq-aarch64-apple-darwin.tar.gz"
      sha256 "fac61e2bb70aa1cb65cb11d15f7783a621cf24f1b3d4d78d18553c7373e08c57"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.10/torq-x86_64-apple-darwin.tar.gz"
      sha256 "cce193a9730e739a00dfc34bd01ae4f8f8104486319658a79ff820999fa39b3b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.10/torq-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a229e99493c700b1f60fca89c69fbdab18a392c874dd12518e329a09db9c5128"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.10/torq-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "31569666d8a86b74a34657df7b85c98aa6eaab631ec4e17dbe68fe837638e5fc"
    end
  end

  def install
    bin.install "torq"
  end

  test do
    assert_match "torq", shell_output("#{bin}/torq --version")
  end
end
