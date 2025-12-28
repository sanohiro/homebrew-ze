# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.2.0/ze-macos-aarch64.tar.gz"
      sha256 "c44356cfee23cb70f8d1abaff4b521521a9071fb55830b5067b300a3fd5a9b53"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.2.0/ze-macos-x86_64.tar.gz"
      sha256 "05d1a35d6593f5bb800f1659339d45143ad5b8e3dd29d82e14dcf385a888abd3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.2.0/ze-linux-aarch64.tar.gz"
      sha256 "b92d1ecfa21d1183ea3fd7c23b97b80ab429b931e6d0168ee69cfd73630a59d0"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.2.0/ze-linux-x86_64.tar.gz"
      sha256 "d3f04ae5ef4c3af57d5d6dca31081c647fd7a19a2bfee0b3c2955bb9e3204b1a"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
