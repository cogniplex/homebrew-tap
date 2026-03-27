class Codemem < Formula
  desc "Standalone Rust memory engine for AI coding assistants"
  homepage "https://github.com/cogniplex/codemem"
  version "0.15.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.15.0/codemem-macos-arm64.tar.gz"
      sha256 "f93226c21013d87e5668c0723084110659bb3cca49dcdc14578bffc37c4e74e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.15.0/codemem-linux-arm64.tar.gz"
      sha256 "1b4d19017dfab1dd290873274ffcd77408258acba79253211d094297943da994"
    end
    on_intel do
      url "https://github.com/cogniplex/codemem/releases/download/v0.15.0/codemem-linux-amd64.tar.gz"
      sha256 "d55df27b800f967b36e7d28f5be234df335562cc8f0a16f7ab1b7f0c313dc1b4"
    end
  end

  def install
    bin.install "codemem"
  end

  test do
    assert_match "codemem", shell_output("#{bin}/codemem --version")
  end
end
