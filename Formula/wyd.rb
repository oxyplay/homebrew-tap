class Wyd < Formula
  desc "See what your AI agents and dev tools left running"
  homepage "https://github.com/oxyplay/wyd"
  version "0.4.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.4.3/wyd-aarch64-apple-darwin.tar.gz"
      sha256 "7797894682eec1c415fb3d238c050f8620ec8ac3f7b8dca18b0b54162e5ce670"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.4.3/wyd-x86_64-apple-darwin.tar.gz"
      sha256 "c265c9b18311b571a7bd49fc2ba67878ffc2769ab5a10f5600b3959277819496"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.4.3/wyd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4df017b828b90d799efd9ade87a89b02bde06a3ee5691e0cc43e6c71c6c89b66"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.4.3/wyd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0ce7b58e243d06bec1360e942421e53a8a542b142d92f171751a3b962d12caf4"
    end
  end

  def install
    bin.install "wyd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wyd --version")
  end
end
