# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.3/ze-macos-aarch64.tar.gz"
      sha256 "7ba1c587f44b4423bc60ae7058da48790b3eb9db8a66ae26beb1637abb9d369a"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.3/ze-macos-x86_64.tar.gz"
      sha256 "5f1ca233c93612741654668c082fd9112c339e9abcaabc3b304d2d19fa6a7af1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.3/ze-linux-aarch64.tar.gz"
      sha256 "0a94057b9cbc674bdacf3855d622b3417985d13afb893d03061118d1a065c7fe"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.3/ze-linux-x86_64.tar.gz"
      sha256 "e515232cdbde0dee17bdb1c38e3cbf8fb7fca48f0a8278c5cdc8a4d528763829"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
