# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT0190 < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "0.19.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/astronomer/astro-cli/releases/download/v0.19.0/astro_0.19.0_darwin_amd64.tar.gz"
    sha256 "8b4c92d87ffd6efd7e984213342bebf168d06f22a6ea1dd3c5a25251f5cf31be"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v0.19.0/astro_0.19.0_linux_amd64.tar.gz"
      sha256 "0d2243ed6a3fde46508896ec55121d78f6f79f271c3ff43455331c2a2243232e"
    end
  end

  def install
    bin.install "astro"
  end

  test do
    system "#{bin}/astro version"
  end
end