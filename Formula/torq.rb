class Torq < Formula
  desc "Fast torrent finder and downloader"
  homepage "https://github.com/Saswatsusmoy/TorQ"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.6/torq-aarch64-apple-darwin.tar.gz"
      sha256 "3fd12a751c6c5c0df7a62e220539148cde8291b6bee5ac5968fbd92e521403cd"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.6/torq-x86_64-apple-darwin.tar.gz"
      sha256 "2f5a9042e224f1c142e3c7738cdb9ed07d1b249a39880b40b337a7f9209ecfe7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.6/torq-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c4e84d69740a276109a00665f4b638b470bc0a5635683e5c45b177bcebb3f8d2"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.6/torq-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2879c4fcc3614fb7ca4031b04cc4af01b40a03076b0bc2baca5eb769692877ab"
    end
  end

  def install
    bin.install "torq"
  end

  test do
    assert_match "torq", shell_output("#{bin}/torq --version")
  end
end
