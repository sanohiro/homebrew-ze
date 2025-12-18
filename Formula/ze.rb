# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.9/ze-macos-aarch64.tar.gz"
      sha256 "cbc65022534190b5c82caa646f209f5408d5663df931cbca10b0e92ef7820668"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.9/ze-macos-x86_64.tar.gz"
      sha256 "62d53cc4a5aa006cd20b00e06ebf7a3196613726c43c5d58ce4f98d605dc89e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.9/ze-linux-aarch64.tar.gz"
      sha256 "6f6cedef15f204305570cc09e012b9f1e7dd70c767bb00b8d0ef4726a32fdc1d"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.9/ze-linux-x86_64.tar.gz"
      sha256 "cae814c638585d1c6b597790b9ed90a95b5a6fe2eaf80a8958a4335e7f611e0c"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
