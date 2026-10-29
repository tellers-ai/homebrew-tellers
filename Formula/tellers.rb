class Tellers < Formula
  desc "Tellers CLI - interact with tellers.ai from the terminal"
  homepage "https://tellers.ai"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tellers-ai/tellers-cli/releases/download/v0.0.5/tellers-v0.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "8ae99fab9fc3e5701e1f993b153a31e313381d93bee8d9ea41bc5492ccfd00e5"
    else
      url "https://github.com/tellers-ai/tellers-cli/releases/download/v0.0.5/tellers-v0.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "d00547327e0156433cea9598afa638ef1d79a1178b96ba6b7ac5c172900b9c92"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tellers-ai/tellers-cli/releases/download/v0.0.5/tellers-v0.0.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d435037bac17f8803df72b44735cf71193e9606adcbfeea544efe1d9e21bfeeb"
    else
      url "https://github.com/tellers-ai/tellers-cli/releases/download/v0.0.5/tellers-v0.0.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "165fc4c3343f0cc96d4f5305ba2426ef011dee0b25cb15924c119302f95b4837"
    end
  end

  def install
    bin.install "tellers"
  end

  test do
    system "#{bin}/tellers", "--help"
  end
end
