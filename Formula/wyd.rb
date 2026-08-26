class Wyd < Formula
  desc "See what your AI agents and dev tools left running"
  homepage "https://wyd.sh"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.6.0/wyd-aarch64-apple-darwin.tar.gz"
      sha256 "651c25d4b18f0ee313e510b2aca865c59e98fa0d546a7d21bb3ca27b86092d27"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.6.0/wyd-x86_64-apple-darwin.tar.gz"
      sha256 "2f4870489b08fb6773327655fe0065de5981c7bce14bc21f3646517986f52f3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.6.0/wyd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "55cf43935fb84c215706598db7540588fe85874a90585fd11f472ff18960a8d8"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.6.0/wyd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7461c8679de0a13d9274be1815e44120edfd9e478b7562be6121f1927817b92d"
    end
  end

  def install
    bin.install "wyd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wyd --version")
  end
end
