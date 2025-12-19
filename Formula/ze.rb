# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.10/ze-macos-aarch64.tar.gz"
      sha256 "d608594c222e7d1380b2e5574dac01c0e32cf80e125258788340933c7f267bb1"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.10/ze-macos-x86_64.tar.gz"
      sha256 "e6eb960476f3736be01f4b0c5f3da90434f23a328033275737f44e2d77868e46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.10/ze-linux-aarch64.tar.gz"
      sha256 "7d7af2f5f148d46841cfd4c7d2f87270fe8535691cb5dc47b55f8baf98ad477d"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.10/ze-linux-x86_64.tar.gz"
      sha256 "458b52ab1551de24974f1dbd0d2d418b2ca6b98481f7766c4e3df823d05dd744"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
