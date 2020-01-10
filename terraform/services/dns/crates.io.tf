module "crates_io" {
  source = "./domain"

  domain  = "crates.io"
  comment = "main domain for crates.io"
  ttl     = 300

  CNAME = {
    "status" = ["pvbm341xnpgm.stspg-customer.com"],
    "ping"   = ["status.ping.apex.sh"],
    # Source: https://github.com/rust-lang/cargo/tree/gh-pages
    "doc" = ["rust-lang.github.io"],
  }

  MX = {
    "@" = [
      "10 mxa.mailgun.org",
      "10 mxb.mailgun.org",
    ],
    "mail" = [
      "10 mxa.mailgun.org",
      "10 mxb.mailgun.org",
    ],
  }

  TXT = {
    "@" = [
      "v=spf1 include:mailgun.org ~all",
    ],
    "mail" = [
      "v=spf1 include:mailgun.org ~all",
    ],
    "k1._domainkey" = [
      "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC+eQtAm5xohRQJCbwTQ8e27GhOdxji94CVOBXQtuiq75sEVu9nMImBiv8UOipvmiTFsM4Odnp7mIq8UeyPDpeUwtbPv9SYflEJt6o+Im5YOU/UnhEXqa1tXbpFrQSISVYz129G1SxGKMmxSBvyrjPNBJJOofqLHrIQrrdcgh5CywIDAQAB",
    ],
    "mailo._domainkey" = [
      "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDu3zVBL/h7U1maoWkGJMi5Gd6OGhqsuBt19o3cRrkaxI1+XMJw9GIPXSc9BZZruVOICJ2Y1SJI2A2SPGIIa9CqYhlyPEcL5AvtoaORX+VjlsPXcdoUH4eX5fjjrWRn8PlWqBrILTRVkhMrz6luFMmzmmHpHC0WbwIQ7QZgnexn5wIDAQAB",
    ]
  }
}
