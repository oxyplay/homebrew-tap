class Wyd < Formula
  desc "See what your AI agents and dev tools left running"
  homepage "https://github.com/oxyplay/wyd"
  version "0.4.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.4.4/wyd-aarch64-apple-darwin.tar.gz"
      sha256 "ec99911556bc85621a30b3b8f7d8cf8c15305303af465c25c292ae025fc925ab"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.4.4/wyd-x86_64-apple-darwin.tar.gz"
      sha256 "716515a32b69eb8247875a63626390c3440b5d8b3b975f9bd632ed8e2be86b40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.4.4/wyd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "857bb160d9f348ab69df93b4fe9e7cc934ae25f44f2c499b73fa4f0d2fd45de8"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.4.4/wyd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3234d554147c6af8370b3f3191186f520a785c71e18a9b27a7adf280eba5a189"
    end
  end

  def install
    bin.install "wyd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wyd --version")
  end
end
