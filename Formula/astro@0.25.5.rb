# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT0254 < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "0.25.5"
  bottle :unneeded
   
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v0.25.5/astro_0.25.5_darwin_amd64.tar.gz"
      sha256 "6faa1024d053e6291ef23302380c4b703ca5b8dfd6d518445e5ecf2c99c978c9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v0.25.5/astro_0.25.5_linux_amd64.tar.gz"
      sha256 "fd52b304e7f7a5efed9d9242dae9d85b030bdc569b1fd31ab64d679ede9cf527"
    end
  end

  def install
    bin.install "astro"
  end

  test do
    system "#{bin}/astro version"
  end
end
