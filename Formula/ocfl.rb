class Ocfl < Formula
  desc "Command-line tools for working with OCFL-based repositories"
  homepage "https://github.com/srerickson/ocfl-tools"
  url "https://github.com/srerickson/ocfl-tools/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "f1b0762ce7da40c4f9d7d852e6ebd9b58f6c4c7eed4617476c112f8b48b1a863"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w"
    system "go", "build", *std_go_args(ldflags:), "./cmd/ocfl"
  end

  test do
    system bin/"ocfl"
  end
end
