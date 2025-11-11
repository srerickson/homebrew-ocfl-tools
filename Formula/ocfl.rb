class Ocfl < Formula
  desc "Command-line tools for working with OCFL-based repositories"
  homepage "https://github.com/srerickson/ocfl-tools"
  url "https://github.com/srerickson/ocfl-tools/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "b6bddc7fc9b65a08495575808582e082929280a22c067110f2a9827cd980d22f"
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
