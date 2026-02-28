class Codemem < Formula
  desc "Standalone Rust memory engine for AI coding assistants"
  homepage "https://github.com/cogniplex/codemem"
  version "0.6.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.6.2/codemem-macos-arm64.tar.gz"
      sha256 "344055bcffd5bdb9d4c50dadb157bc6899df9ae8834f29fb9827dff35245e6de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.6.2/codemem-linux-arm64.tar.gz"
      sha256 "f160fd43957da3060dd9c725e8b51fa9f72d7ad69b68e7eb28efe99e3838e201"
    end
    on_intel do
      url "https://github.com/cogniplex/codemem/releases/download/v0.6.2/codemem-linux-amd64.tar.gz"
      sha256 "a3d6162387ca156b8e51d854ead0034d12f248b9e4c97911145763098e5ab9c5"
    end
  end

  def install
    bin.install "codemem"
  end

  test do
    assert_match "codemem", shell_output("#{bin}/codemem --version")
  end
end
