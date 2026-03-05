class Codemem < Formula
  desc "Standalone Rust memory engine for AI coding assistants"
  homepage "https://github.com/cogniplex/codemem"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.8.0/codemem-macos-arm64.tar.gz"
      sha256 "ea9bcc6b1f373a82957e708512dc6415cdcadaf5f59c26177e704551ba3b3270"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.8.0/codemem-linux-arm64.tar.gz"
      sha256 "5d865a9d8f69bea7bf89f5a3855a38ab9aa1108615881a38c01e6bc5250c9dbf"
    end
    on_intel do
      url "https://github.com/cogniplex/codemem/releases/download/v0.8.0/codemem-linux-amd64.tar.gz"
      sha256 "88eecfc3a3c1edfdcbc8ab0eccfd99cabd091af37bc7ead24f8c73b008e5778a"
    end
  end

  def install
    bin.install "codemem"
  end

  test do
    assert_match "codemem", shell_output("#{bin}/codemem --version")
  end
end
