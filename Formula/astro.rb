# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Astro < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "1.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.4.0/astro_1.4.0_darwin_arm64.tar.gz"
      sha256 "29f414714e6525144551088f6f472cd0cd6629af632a84005643d6df262431a7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.4.0/astro_1.4.0_darwin_amd64.tar.gz"
      sha256 "3d886689ec6b856a69c81dee55a7810be0cddc463ad0fb94fa850aff0cbfa662"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.4.0/astro_1.4.0_linux_arm64.tar.gz"
      sha256 "9da157e169848058e4bb12e40bb766bc418149d733c2519007350d8f3e975b1c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.4.0/astro_1.4.0_linux_amd64.tar.gz"
      sha256 "856d05d1d76a3ec61f9c52842c63dda252874532c28f36358c96ea2918834ae4"  
    end
  end

  def install
    bin.install "astro"
  end


  test do
    system "#{bin}/astro version"
  end
end
