# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.2.3/ze-macos-aarch64.tar.gz"
      sha256 "6a8663d8bfbe371b61d7441e505356e43632ba1a093e5134a80440aff891b16a"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.2.3/ze-macos-x86_64.tar.gz"
      sha256 "92bfa0e8d51f972b8ca95de7e8199d034eae9b78da5e94affcbc119de21a89ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.2.3/ze-linux-aarch64.tar.gz"
      sha256 "8f9bf09e2e4f7c0c1efcc154cb5af76fdfad63e09bbccad0ddd2e5a674feb66c"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.2.3/ze-linux-x86_64.tar.gz"
      sha256 "650e58e5f224a60cbb8e0e608f77eee9c0949dfff0ea9e969c1f911c9e872666"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
