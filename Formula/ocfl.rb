class Ocfl < Formula
  desc "command-line tools for working with OCFL-based repositories"
  homepage "https://github.com/srerickson/ocfl-tools"
  url "https://github.com/srerickson/ocfl-tools/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "dbe3f519d283c26fdc7e164728fd7190a36a8b71626b5afab8c9fa56f44653a0"
  license "MIT"

  depends_on "go" => :build

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    ldflags = "-s -w"
    system "go", "build", *std_go_args(ldflags:), "./cmd/ocfl"
  end

  test do
    system bin/"ocfl"
  end
end
