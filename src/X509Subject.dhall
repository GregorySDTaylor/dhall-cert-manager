{ Type =
    { organizations : Optional (List Text)
    , countries : Optional (List Text)
    , organizationalUnits : Optional (List Text)
    , localities : Optional (List Text)
    , provinces : Optional (List Text)
    , streetAddresses : Optional (List Text)
    , postalCodes : Optional (List Text)
    , serialNumber : Optional Text
    }
, default =
  { organizations = None (List Text)
  , countries = None (List Text)
  , organizationalUnits = None (List Text)
  , localities = None (List Text)
  , provinces = None (List Text)
  , streetAddresses = None (List Text)
  , postalCodes = None (List Text)
  , serialNumber = None Text
  }
}
