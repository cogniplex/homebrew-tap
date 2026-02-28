class Codemem < Formula
  desc "Standalone Rust memory engine for AI coding assistants"
  homepage "https://github.com/cogniplex/codemem"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.6.0/codemem-macos-arm64.tar.gz"
      sha256 "483edc3009208476871edef9aa6ec2ba1f0eea1ee7f1f432630c60fef1622e4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.6.0/codemem-linux-arm64.tar.gz"
      sha256 "f4856037867991d648517c9eebdcd52a4b72ba1a91895b81b0132ef825a3d3cc"
    end
    on_intel do
      url "https://github.com/cogniplex/codemem/releases/download/v0.6.0/codemem-linux-amd64.tar.gz"
      sha256 "416bbd85ffc7d77a337a0b475e825a78c777c03edb9e6e1afd475cc5d5504177"
    end
  end

  def install
    bin.install "codemem"
  end

  test do
    assert_match "codemem", shell_output("#{bin}/codemem --version")
  end
end
