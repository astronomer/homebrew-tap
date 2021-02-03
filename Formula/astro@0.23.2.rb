# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT0232 < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "0.23.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/astronomer/astro-cli/releases/download/v0.23.2/astro_0.23.2_darwin_amd64.tar.gz"
    sha256 "9a0165e3703179441078e3dcce724201305fa3f36005b441ebf52005fdd05978"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v0.23.2/astro_0.23.2_linux_amd64.tar.gz"
      sha256 "8320bb208cebdf57fde52505dc4edb740c9eae71ad518dccec1ba2af4588f6ce"
    end
  end

  def install
    bin.install "astro"
  end

  test do
    system "#{bin}/astro version"
  end
end