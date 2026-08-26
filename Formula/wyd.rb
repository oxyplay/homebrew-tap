class Wyd < Formula
  desc "See what your AI agents and dev tools left running"
  homepage "https://github.com/oxyplay/wyd"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.5.0/wyd-aarch64-apple-darwin.tar.gz"
      sha256 "613763f14f0f57d440550688f7747dbe7a830c3728e3294898b42d9f39e3687f"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.5.0/wyd-x86_64-apple-darwin.tar.gz"
      sha256 "ab676e3f55bf932733a26fdc768ef38b4e7763ca973770e28fb758279f80e7d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.5.0/wyd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "12371f8319b0e178c4232a09318f48a295d0117956c433c8a0a66af570081b00"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.5.0/wyd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a960a7654eb3761a8b7d39e1e47affbba15027d304f204dff79902d0cb314de7"
    end
  end

  def install
    bin.install "wyd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wyd --version")
  end
end
