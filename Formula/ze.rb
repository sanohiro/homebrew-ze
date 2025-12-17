# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.4/ze-macos-aarch64.tar.gz"
      sha256 "ee240b998dc492b8a63b64d691902333446995de90e72c037f568cd54e474dc8"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.4/ze-macos-x86_64.tar.gz"
      sha256 "aef238343be4f923a474335ce6e79dd8a8c0a78da9b024b01324bc98084d0d8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.4/ze-linux-aarch64.tar.gz"
      sha256 "a51da540a05089c5bfa984a3ece049a12be6dd5b967c25a13dad6ad4b441e2f1"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.4/ze-linux-x86_64.tar.gz"
      sha256 "ea310531816e493daffcd92ea699e152590e940f422af25c22ed90ed0f175fc7"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
