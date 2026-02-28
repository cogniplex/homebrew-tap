class Codemem < Formula
  desc "Standalone Rust memory engine for AI coding assistants"
  homepage "https://github.com/cogniplex/codemem"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.6.1/codemem-macos-arm64.tar.gz"
      sha256 "7c5e8b8dd1074303c1a6949bdedf5e54f70e3ce3e1bf63fa524b7af18caedb0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.6.1/codemem-linux-arm64.tar.gz"
      sha256 "6f058e1b7d4b4385c2077c701b843775ff1eff658df72cd4fb9055deda184934"
    end
    on_intel do
      url "https://github.com/cogniplex/codemem/releases/download/v0.6.1/codemem-linux-amd64.tar.gz"
      sha256 "fa05215e280113a554544763f178ba67406e8a3d2a6f5c77edecbaced71b58f5"
    end
  end

  def install
    bin.install "codemem"
  end

  test do
    assert_match "codemem", shell_output("#{bin}/codemem --version")
  end
end
