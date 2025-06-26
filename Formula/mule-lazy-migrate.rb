class MuleLazyMigrate < Formula
  desc "Mule 4 migration tool"
  homepage "https://github.com/kchernokozinsky/mule-lazy-migrate"
  url "https://github.com/kchernokozinsky/mule-lazy-migrate/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "294483f4886171a6c65a7f55a8b2043e6b85dc98d783e39956c88d2d4a5ad0c2"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/mule-lazy-migrate", "--help"
  end
end 