# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Astro < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "1.17.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.17.1/astro_1.17.1_darwin_arm64.tar.gz"
      sha256 "3d7484c697ee97c018f81e4474d18b0402a2c684057becc80a276f5cb1ccbf0a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.17.1/astro_1.17.1_darwin_amd64.tar.gz"
      sha256 "cf89969d5c16207b4de245579b9294e07434e3ca3e50f86a7e57fe4ecf98c925"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.17.1/astro_1.17.1_linux_arm64.tar.gz"
      sha256 "d367b972f356738674067308fa26e0741c2559a4d0e193308ce529a55145b6b9"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.17.1/astro_1.17.1_linux_amd64.tar.gz"
      sha256 "781ab5b08916f4d163211bf6308633e571ea60c0b9085c00807c2ce1e77a633f"
    end
  end

  def install
    bin.install "astro"
  end


  test do
    system "#{bin}/astro version"
  end
end
