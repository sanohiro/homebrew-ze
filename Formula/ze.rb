# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.5.2/ze-macos-aarch64.tar.gz"
      sha256 "a207a4b4f9b178abe53d039581b7b7efe25cdbf8cad68cf6792e9d0922bf36f8"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.5.2/ze-macos-x86_64.tar.gz"
      sha256 "5621c93efb4cbb6f3fc26b8d21a4613db3081f9217ea55b12522da1c7fdd8930"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.5.2/ze-linux-aarch64.tar.gz"
      sha256 "301abeac16ecc8e70a639b253ed9d47bf352443b27cbd4a454091b9cf833ea5d"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.5.2/ze-linux-x86_64.tar.gz"
      sha256 "44469ce40915b40cc32f3eeb280a70be4bf67132e91b3586d5c582e791f29662"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
