# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.5/ze-macos-aarch64.tar.gz"
      sha256 "259d67fa4aff1c0350993dc09e698adfbe6bb6daf498ac6c289c68dc1da34a92"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.5/ze-macos-x86_64.tar.gz"
      sha256 "12d46ebdfe94aa9b06a9f5e2c7c4a0704117c007cca3e27da061edb34c78dca4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.5/ze-linux-aarch64.tar.gz"
      sha256 "54ba000ca0553395ffadc2d3af0e17c1cf12e5f4e3550e1cfca9120dbdf2222d"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.5/ze-linux-x86_64.tar.gz"
      sha256 "a90f2bac9989b5212553fb74dcbcab5f5aed68d20a871932e44e9268ca0ec440"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
