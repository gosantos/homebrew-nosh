class Nosh < Formula
  desc "TUI todo and notes manager"
  homepage "https://github.com/gosantos/nosh"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gosantos/nosh/releases/download/v0.2.1/nosh-aarch64-apple-darwin.tar.gz"
      sha256 "acdd3e4437fa4905430f638d0345c130c23d527fb3318f93ccb880513c704559" # arm
    else
      url "https://github.com/gosantos/nosh/releases/download/v0.2.1/nosh-x86_64-apple-darwin.tar.gz"
      sha256 "440a7cb6cfee99da894cea9990bf82e9c26b42b2bd3b9436b34524020f0d87e1" # intel
    end
  end

  def install
    bin.install "nosh"
  end

  test do
    system "#{bin}/nosh", "--version"
  end
end
