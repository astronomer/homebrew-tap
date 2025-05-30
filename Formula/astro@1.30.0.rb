# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT1300 < Formula
    desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
    homepage "https://astronomer.io"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.30.0/astro_1.30.0_darwin_arm64.tar.gz"
        sha256 "3788fad94d810293ba1e5df8db65861e9a5360b43755afb61f69a98126750f85"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.30.0/astro_1.30.0_darwin_amd64.tar.gz"
        sha256 "8fcfb34d085d6c62bc4fed9f0c556e495c8de10265964e6a7acd8ca54b97cdd9"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.30.0/astro_1.30.0_linux_arm64.tar.gz"
        sha256 "e3dda30962addbdd27b4282d9a5cb38dc356d13467389178dfce1bc2930e4340"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.30.0/astro_1.30.0_linux_amd64.tar.gz"
        sha256 "e4964b45d6359dbeadba5918e8bec869eabffdc21825c2a07ea332e55c19b0f5"
      end
    end
  
    def install
      bin.install "astro"
    end
  
  
    test do
      system "#{bin}/astro version"
    end
  end
