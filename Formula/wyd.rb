class Wyd < Formula
  desc "See what your AI agents and dev tools left running"
  homepage "https://wyd.sh"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.8.0/wyd-aarch64-apple-darwin.tar.gz"
      sha256 "d8f371b8ddac0e9792c57a6576f270612e298b288d6681cb8dc3ec0b6cb834e2"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.8.0/wyd-x86_64-apple-darwin.tar.gz"
      sha256 "1d97bcb3cc037e0a7ad95509294b05067f1f3e7e70ceafccbba1a0fd1fae8292"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.8.0/wyd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e79063f5ff8f33b206c5652c075ba555a4382b615b0e51b064f3f914683c6ebf"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.8.0/wyd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d07972c0a3cc375415acb7f971a9a9dfa2ae9f54b80d683a1e864e92a38d4c7c"
    end
  end

  def install
    bin.install "wyd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wyd --version")
  end
end
