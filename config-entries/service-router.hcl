Kind = "service-router"
Name = "billing"
Routes = [
  {
    Match {
      HTTP {
        PathExact = "/mycompany.BillingService/GenerateInvoice"
      }
    }

    Destination {
      Service = "invoice-generator"
      ServiceSubset = "v1"
    }
  },
  # NOTE: a default catch-all will send unmatched traffic to "billing"
]
