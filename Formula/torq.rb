class Torq < Formula
  desc "Fast torrent finder and downloader"
  homepage "https://github.com/Saswatsusmoy/TorQ"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.7/torq-aarch64-apple-darwin.tar.gz"
      sha256 "fb390d38569abf670675444378f8e394aed06b1eab71e6d80d8d3178360e7796"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.7/torq-x86_64-apple-darwin.tar.gz"
      sha256 "61d7329dfee56da43881c497fa644c6034524bd0648de4da2ffc41f17b8cbd28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.7/torq-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33ad15716c8a29055efc5abf32f0f80148ff3f6f1097a0af23f3c2b93fd6bfaa"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.7/torq-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b8fda7e8cb641615d175e6cf85c7554b1196ae7065b2d7680c6c243d66926e29"
    end
  end

  def install
    bin.install "torq"
  end

  test do
    assert_match "torq", shell_output("#{bin}/torq --version")
  end
end
