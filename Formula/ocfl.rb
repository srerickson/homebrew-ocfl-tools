class Ocfl < Formula
  desc "Command-line tools for working with OCFL-based repositories"
  homepage "https://github.com/srerickson/ocfl-tools"
  url "https://github.com/srerickson/ocfl-tools/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "46c3e10b865c9ca7de49b512cd3716f83c090519de4336d6e74f4f210ae2dbe2"
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
