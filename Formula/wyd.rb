class Wyd < Formula
  desc "See what your AI agents and dev tools left running"
  homepage "https://github.com/oxyplay/wyd"
  version "0.4.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.4.2/wyd-aarch64-apple-darwin.tar.gz"
      sha256 "f2d7c8f4d51ab358a5f639a254c2df89d75be43258488ef9413a80af8d823b2c"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.4.2/wyd-x86_64-apple-darwin.tar.gz"
      sha256 "0f93deb13c7709d1b039c6b4c49512ee14c6abffd2e465748b7fa74eb85db582"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.4.2/wyd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b189aeb02910d5f4cce0049b09193ccf6eeaff1ae2d8c009de83b84fc85612eb"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.4.2/wyd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b6a84e43cf38c429c5c2503810aadd3494957d4c659e57f4cdd256ff8b6805c"
    end
  end

  def install
    bin.install "wyd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wyd --version")
  end
end
