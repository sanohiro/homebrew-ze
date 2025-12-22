# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.3/ze-macos-aarch64.tar.gz"
      sha256 "7693e91534c1ce42284e4ba4add7a215c08ee0b77342a6eccc2f969903d5d8c7"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.3/ze-macos-x86_64.tar.gz"
      sha256 "0219754a4e4362c8f278592295a931d4be6b638a8fef78bbc96d67c22ce0e755"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.3/ze-linux-aarch64.tar.gz"
      sha256 "f1f5dc25a9adfeea2203cc4a348ebcf2fe341abbcd9b710d8ba8aa9dc2eb75d6"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.3/ze-linux-x86_64.tar.gz"
      sha256 "829f580bb9317f2cbeed266a062bd7d74b6c7637ea4024986b9b9b526468268a"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
