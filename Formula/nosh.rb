class Nosh < Formula
  desc "TUI todo and notes manager"
  homepage "https://github.com/gosantos/nosh"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gosantos/nosh/releases/download/v0.4.0/nosh-aarch64-apple-darwin.tar.gz"
      sha256 "fe5f420bb44f35989235b1572c26c37ad63b680dc97d31c3b72e2773071fbd8c" # arm
    else
      url "https://github.com/gosantos/nosh/releases/download/v0.4.0/nosh-x86_64-apple-darwin.tar.gz"
      sha256 "a005447bbd43e55d6514849fa228d014f1bab7d9eea28bf1c6272f2b1e1e6aff" # intel
    end
  end

  def install
    bin.install "nosh"
  end

  test do
    system "#{bin}/nosh", "--version"
  end
end
