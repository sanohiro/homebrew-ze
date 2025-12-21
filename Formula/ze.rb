# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.0/ze-macos-aarch64.tar.gz"
      sha256 "1d36a7118131959389bf31c52db79e083ad0ca7f8edd4ee4b67a0c3358f74e43"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.0/ze-macos-x86_64.tar.gz"
      sha256 "c2730845af80ace73e22ed60c2350fe28a773179aef71376b0bada6bd11f50b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.0/ze-linux-aarch64.tar.gz"
      sha256 "3581e92eb0f075c4d968518c27df0a4bac4e23eb09ad87c2be26e8573239fed8"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.0/ze-linux-x86_64.tar.gz"
      sha256 "483cfded32f5530a97da1766064c3c30e70a1a6cdcabaac08b41dc2b902ed7e0"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
