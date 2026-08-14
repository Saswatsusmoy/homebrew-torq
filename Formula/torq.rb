class Torq < Formula
  desc "Fast torrent finder and downloader"
  homepage "https://github.com/Saswatsusmoy/TorQ"
  version "0.1.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.13/torq-aarch64-apple-darwin.tar.gz"
      sha256 "d00a10b52ab07dce7265e61cc99bcda3a6a66985398b4d0b7e42d56df0581865"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.13/torq-x86_64-apple-darwin.tar.gz"
      sha256 "caa7c5c855a5f2c8fc71746db584dd6ab2922059f7de0ca261b535b75db304be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.13/torq-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "59f8b19154a2ec9833bbebe02f665b8fc78c6c12257d2977adf7e24822a3d52c"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.13/torq-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a41bbaccad2ef9049af9f3e43006dcf8e8bafde0701b9e884d09ade38c498fa"
    end
  end

  def install
    bin.install "torq"
  end

  test do
    assert_match "torq", shell_output("#{bin}/torq --version")
  end
end
