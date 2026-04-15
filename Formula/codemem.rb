class Codemem < Formula
  desc "Standalone Rust memory engine for AI coding assistants"
  homepage "https://github.com/cogniplex/codemem"
  version "0.17.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.17.1/codemem-macos-arm64.tar.gz"
      sha256 "db12922df7e78c4c023196506e4dfee4f59c048915c0746f739eb3cdcf956379"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.17.1/codemem-linux-arm64.tar.gz"
      sha256 "90cd601c45e3a14cf8dad87a0001dcf47234543325d155617cf982f5fd23d8cd"
    end
    on_intel do
      url "https://github.com/cogniplex/codemem/releases/download/v0.17.1/codemem-linux-amd64.tar.gz"
      sha256 "c4259c286822486fd503fac64669cf587164bf9403b47d5eee767203a5898340"
    end
  end

  def install
    bin.install "codemem"
  end

  test do
    assert_match "codemem", shell_output("#{bin}/codemem --version")
  end
end
