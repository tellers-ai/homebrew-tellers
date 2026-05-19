class Tellers < Formula
  desc "Tellers CLI - interact with tellers.ai from the terminal"
  homepage "https://tellers.ai"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tellers-ai/tellers-cli/releases/download/v0.0.3/tellers-v0.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "3dcad1cd13597c4d450b1a670aca02815f225667d348f327a27876b9b5bc6804"
    else
      url "https://github.com/tellers-ai/tellers-cli/releases/download/v0.0.3/tellers-v0.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "1f39b2e3ba922daf87e04ec4e8ecd4a5aea982ca1a4159ec11d2bf124d42b01f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tellers-ai/tellers-cli/releases/download/v0.0.3/tellers-v0.0.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a42d1b441a24a9251b8d740ebd1275462fc602ad7c6b5a8a05a87ba1bc8914a4"
    else
      url "https://github.com/tellers-ai/tellers-cli/releases/download/v0.0.3/tellers-v0.0.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7f2587318d4378695a09e1642a04e68736a08a920dec7239cd326e8cbf79e0aa"
    end
  end

  def install
    bin.install "tellers"
  end

  test do
    system "#{bin}/tellers", "--help"
  end
end
