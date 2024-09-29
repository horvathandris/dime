import gleam/result
import gleam/string

pub const aed = Currency(
  "AED",
  "784",
  "United Arab Emirates Dirham",
  "د.إ",
  2,
)

pub const afn = Currency("AFN", "971", "Afghan Afghani", "؋", 2)

pub const all = Currency("ALL", "008", "Albanian Lek", "L", 2)

pub const amd = Currency("AMD", "051", "Armenian Dram", "֏", 2)

pub const ang = Currency("ANG", "532", "Netherlands Antillean Guilder", "ƒ", 2)

pub const aoa = Currency("AOA", "973", "Angolan Kwanza", "Kz", 2)

pub const ars = Currency("ARS", "032", "Argentine Peso", "$", 2)

pub const aud = Currency("AUD", "036", "Australian Dollar", "$", 2)

pub const awg = Currency("AWG", "533", "Aruban Florin", "ƒ", 2)

pub const azn = Currency("AZN", "944", "Azerbaijani Manat", "₼", 2)

pub const bam = Currency(
  "BAM",
  "977",
  "Bosnia and Herzegovina Convertible Mark",
  "KM",
  2,
)

pub const bbd = Currency("BBD", "052", "Barbadian Dollar", "$", 2)

pub const bdt = Currency("BDT", "050", "Bangladeshi Taka", "৳", 2)

pub const bgn = Currency("BGN", "975", "Bulgarian Lev", "лв", 2)

pub const bhd = Currency("BHD", "048", "Bahraini Dinar", ".د.ب", 3)

pub const bif = Currency("BIF", "108", "Burundian Franc", "FBu", 0)

pub const bmd = Currency("BMD", "060", "Bermudian Dollar", "$", 2)

pub const bnd = Currency("BND", "096", "Brunei Dollar", "$", 2)

pub const bob = Currency("BOB", "068", "Bolivian Boliviano", "Bs", 2)

pub const brl = Currency("BRL", "986", "Brazilian Real", "R$", 2)

pub const bsd = Currency("BSD", "044", "Bahamian Dollar", "$", 2)

pub const btn = Currency("BTN", "064", "Bhutanese Ngultrum", "Nu.", 2)

pub const bwp = Currency("BWP", "072", "Botswana Pula", "P", 2)

pub const byn = Currency("BYN", "933", "Belarusian Ruble", "Br", 2)

pub const bzd = Currency("BZD", "084", "Belize Dollar", "$", 2)

pub const cad = Currency("CAD", "124", "Canadian Dollar", "$", 2)

pub const cdf = Currency("CDF", "976", "Congolese Franc", "FC", 2)

pub const chf = Currency("CHF", "756", "Swiss Franc", "CHF", 2)

pub const clp = Currency("CLP", "152", "Chilean Peso", "$", 0)

pub const cny = Currency("CNY", "156", "Chinese Yuan Renminbi", "¥", 2)

pub const cop = Currency("COP", "170", "Colombian Peso", "$", 2)

pub const crc = Currency("CRC", "188", "Costa Rican Colon", "₡", 2)

pub const cup = Currency("CUP", "192", "Cuban Peso", "$", 2)

pub const cuc = Currency("CUC", "931", "Peso Convertible", "$", 2)

pub const cve = Currency("CVE", "132", "Cabo Verde Escudo", "$", 2)

pub const czk = Currency("CZK", "203", "Czech Koruna", "Kč", 2)

pub const djf = Currency("DJF", "262", "Djibouti Franc", "Fdj", 0)

pub const dkk = Currency("DKK", "208", "Danish Krone", "kr", 2)

pub const dop = Currency("DOP", "214", "Dominican Peso", "$", 2)

pub const dzd = Currency("DZD", "012", "Algerian Dinar", "دج", 2)

pub const egp = Currency("EGP", "818", "Egyptian Pound", "£", 2)

pub const ern = Currency("ERN", "232", "Eritrean Nakfa", "Nfk", 2)

pub const etb = Currency("ETB", "230", "Ethiopian Birr", "Br", 2)

pub const eur = Currency("EUR", "978", "Euro", "€", 2)

pub const fjd = Currency("FJD", "242", "Fiji Dollar", "$", 2)

pub const fkp = Currency("FKP", "238", "Falkland Islands Pound", "£", 2)

pub const gbp = Currency("GBP", "826", "Pound Sterling", "£", 2)

pub const gel = Currency("GEL", "981", "Georgian Lari", "₾", 2)

pub const ghs = Currency("GHS", "936", "Ghana Cedi", "₵", 2)

pub const gip = Currency("GIP", "292", "Gibraltar Pound", "£", 2)

pub const gmd = Currency("GMD", "270", "Gambian Dalasi", "D", 2)

pub const gnf = Currency("GNF", "324", "Guinean Franc", "FG", 0)

pub const gtq = Currency("GTQ", "320", "Guatemalan Quetzal", "Q", 2)

pub const gyd = Currency("GYD", "328", "Guyana Dollar", "$", 2)

pub const hkd = Currency("HKD", "344", "Hong Kong Dollar", "$", 2)

pub const hnl = Currency("HNL", "340", "Hondurasi Lempira", "L", 2)

pub const hrk = Currency("HRK", "191", "Croatian Kuna", "kn", 2)

pub const htg = Currency("HTG", "332", "Haitian Gourde", "G", 2)

pub const huf = Currency("HUF", "348", "Hungarian Forint", "Ft", 2)

pub const idr = Currency("IDR", "360", "Indian Rupiah", "Rp", 2)

pub const ils = Currency("ILS", "376", "Israeli New Sheqel", "₪", 2)

pub const inr = Currency("INR", "356", "Indian Rupee", "₹", 2)

pub const iqd = Currency("IQD", "368", "Iraqi Dinar", "ع.د", 3)

pub const irr = Currency("IRR", "364", "Iranian Rial", "﷼", 2)

pub const isk = Currency("ISK", "352", "Icelandic Króna", "kr", 0)

pub const jmd = Currency("JMD", "388", "Jamaican Dollar", "$", 2)

pub const jod = Currency("JOD", "400", "Jordanian Dinar", "د.ا", 3)

pub const jpy = Currency("JPY", "392", "Japanese Yen", "¥", 0)

pub const kes = Currency("KES", "404", "Kenyan Shilling", "Sh", 2)

pub const kgs = Currency("KGS", "417", "Kyrgyzstani Som", "лв", 2)

pub const khr = Currency("KHR", "116", "Cambodian Riel", "៛", 2)

pub const kmf = Currency("KMF", "174", "Comorian Franc", "CF", 0)

pub const kpw = Currency("KPW", "408", "North Korean Won", "₩", 2)

pub const krw = Currency("KRW", "410", "South Korean Won", "₩", 0)

pub const kwd = Currency("KWD", "414", "Kuwaiti Dinar", "د.ك", 3)

pub const kyd = Currency("KYD", "136", "Cayman Islands Dollar", "$", 2)

pub const kzt = Currency("KZT", "398", "Kazakhstani Tenge", "₸", 2)

pub const lak = Currency("LAK", "418", "Lao Kip", "₭", 2)

pub const lbp = Currency("LBP", "422", "Lebanese Pound", "ل.ل", 2)

pub const lkr = Currency("LKR", "144", "Sri Lankan Rupee", "Rs", 2)

pub const lrd = Currency("LRD", "430", "Liberian Dollar", "$", 2)

pub const lsl = Currency("LSL", "426", "Loti", "L", 2)

pub const lyd = Currency("LYD", "434", "Libyan Dinar", "ل.د", 3)

pub const mad = Currency("MAD", "504", "Moroccan Dirham", "د.م.", 2)

pub const mdl = Currency("MDL", "498", "Moldovan Leu", "L", 2)

pub const mga = Currency("MGA", "969", "Malagasy Ariary", "Ar", 2)

pub const mkd = Currency("MKD", "807", "Macedonian Denar", "ден", 2)

pub const mmk = Currency("MMK", "104", "Myanmar Kyat", "K", 2)

pub const mnt = Currency("MNT", "496", "Mongolian Tögrög", "₮", 2)

pub const mop = Currency("MOP", "446", "Macanese Pataca", "P", 2)

pub const mru = Currency("MRU", "929", "Mauritanian Ouguiya", "UM", 2)

pub const mur = Currency("MUR", "480", "Mauritian Rupee", "₨", 2)

pub const mvr = Currency("MVR", "462", "Maldivian Rufiyaa", ".ރ", 2)

pub const mwk = Currency("MWK", "454", "Malawian Kwacha", "MK", 2)

pub const mxn = Currency("MXN", "484", "Mexican Peso", "$", 2)

pub const myr = Currency("MYR", "458", "Malaysian Ringgit", "RM", 2)

pub const mzn = Currency("MZN", "943", "Mozambican Metical", "MT", 2)

pub const nad = Currency("NAD", "516", "Namibian Dollar", "$", 2)

pub const ngn = Currency("NGN", "566", "Nigerian Naira", "₦", 2)

pub const nio = Currency("NIO", "558", "Nicaraguan Córdoba", "C$", 2)

pub const nok = Currency("NOK", "578", "Norwegian Krone", "kr", 2)

pub const npr = Currency("NPR", "524", "Nepalese Rupee", "₨", 2)

pub const nzd = Currency("NZD", "554", "New Zealand Dollar", "$", 2)

pub const omr = Currency("OMR", "512", "Omani Rial", "ر.ع.", 3)

pub const pab = Currency("PAB", "590", "Panamanian Balboa", "B/.", 2)

pub const pen = Currency("PEN", "604", "Peruvian Sol", "S/", 2)

pub const pgk = Currency("PGK", "598", "Papua New Guinean Kina", "K", 2)

pub const php = Currency("PHP", "608", "Philippine Peso", "₱", 2)

pub const pkr = Currency("PKR", "586", "Pakistani Rupee", "₨", 2)

pub const pln = Currency("PLN", "985", "Polish Złoty", "zł", 2)

pub const pyg = Currency("PYG", "600", "Paraguayan Guaraní", "₲", 0)

pub const qar = Currency("QAR", "634", "Qatari Riyal", "ر.ق", 2)

pub const ron = Currency("RON", "946", "Romanian Leu", "lei", 2)

pub const rsd = Currency("RSD", "941", "Serbian Dinar", "дин", 2)

pub const rub = Currency("RUB", "643", "Russian Ruble", "₽", 2)

pub const rwf = Currency("RWF", "646", "Rwandan Franc", "FRw", 0)

pub const sar = Currency("SAR", "682", "Saudi Riyal", "ر.س", 2)

pub const sbd = Currency("SBD", "090", "Solomon Islands Dollar", "$", 2)

pub const scr = Currency("SCR", "690", "Seychellois Rupee", "₨", 2)

pub const sdg = Currency("SDG", "938", "Sudanese Pound", "ج.س.", 2)

pub const sek = Currency("SEK", "752", "Swedish Krona", "kr", 2)

pub const sgd = Currency("SGD", "702", "Singapore Dollar", "$", 2)

pub const shp = Currency("SHP", "654", "Saint Helena Pound", "£", 2)

pub const sle = Currency("SLE", "925", "Sierra Leonean Leone", "Le", 2)

pub const sos = Currency("SOS", "706", "Somali Shilling", "Sh", 2)

pub const srd = Currency("SRD", "968", "Surinamese Dollar", "$", 2)

pub const ssp = Currency("SSP", "728", "South Sudanese Pound", "£", 2)

pub const stn = Currency(
  "STN",
  "930",
  "São Tomé and Príncipe Dobra",
  "Db",
  2,
)

pub const svc = Currency("SVC", "222", "El Salvador Colon", "₡", 2)

pub const syp = Currency("SYP", "760", "Syrian Pound", "£", 2)

pub const szl = Currency("SZL", "748", "Swazi Lilangeni", "L", 2)

pub const thb = Currency("THB", "764", "Thai Baht", "฿", 2)

pub const tjs = Currency("TJS", "972", "Tajikistani Somoni", "ЅМ", 2)

pub const tmt = Currency("TMT", "934", "Turkmenistani New Manat", "m", 2)

pub const tnd = Currency("TND", "788", "Tunisian Dinar", "د.ت", 3)

pub const top = Currency("TOP", "776", "Tongan Paʻanga", "T$", 2)

pub const try = Currency("TRY", "949", "Turkish Lira", "₺", 2)

pub const ttd = Currency("TTD", "780", "Trinidad and Tobago Dollar", "$", 2)

pub const twd = Currency("TWD", "901", "New Taiwan Dollar", "$", 2)

pub const tzs = Currency("TZS", "834", "Tanzanian Shilling", "Sh", 2)

pub const uah = Currency("UAH", "980", "Ukrainian Hryvnia", "₴", 2)

pub const ugx = Currency("UGX", "800", "Ugandan Shilling", "Sh", 0)

pub const usd = Currency("USD", "840", "United States Dollar", "$", 2)

pub const uyu = Currency("UYU", "858", "Uruguayan Peso", "$U", 2)

pub const uyw = Currency("UYW", "927", "Unidad Previsional", "UP", 4)

pub const uzs = Currency("UZS", "860", "Uzbekistani So'm", "лв", 2)

pub const ved = Currency("VED", "926", "Venezuelan Bolívar", "Bs.", 2)

pub const ves = Currency("VES", "928", "Venezuelan Bolívar", "Bs.", 2)

pub const vnd = Currency("VND", "704", "Vietnamese Đồng", "₫", 0)

pub const vuv = Currency("VUV", "548", "Vanuatu Vatu", "VT", 0)

pub const wst = Currency("WST", "882", "Samoan Tālā", "T", 2)

pub const xaf = Currency("XAF", "950", "Central African CFA Franc", "F.CFA", 0)

pub const xcd = Currency("XCD", "951", "East Caribbean Dollar", "$", 2)

pub const xof = Currency("XOF", "952", "West African CFA Franc", "F.CFA", 0)

pub const xpf = Currency("XPF", "953", "CFP Franc", "₣", 0)

pub const yer = Currency("YER", "886", "Yemeni Rial", "﷼", 2)

pub const zar = Currency("ZAR", "710", "South African Rand", "R", 2)

pub const zmw = Currency("ZMW", "967", "Zambian Kwacha", "ZK", 2)

pub const zwg = Currency("ZWG", "924", "Zimbabwean Gold", "ZiG", 2)

/// A list of all the currencies known to this library.
/// 
const all_currencies = [
  aed, afn, all, amd, ang, aoa, ars, aud, awg, azn, bam, bbd, bdt, bgn, bhd, bif,
  bmd, bnd, bob, brl, bsd, btn, bwp, byn, bzd, cad, cdf, chf, clp, cny, cop, crc,
  cup, cuc, cve, czk, djf, dkk, dop, dzd, egp, ern, etb, eur, fjd, fkp, gbp, gel,
  ghs, gip, gmd, gnf, gtq, gyd, hkd, hnl, hrk, htg, huf, idr, ils, inr, iqd, irr,
  isk, jmd, jod, jpy, kes, kgs, khr, kmf, kpw, krw, kwd, kyd, kzt, lak, lbp, lkr,
  lrd, lsl, lyd, mad, mdl, mga, mkd, mmk, mnt, mop, mru, mur, mvr, mwk, mxn, myr,
  mzn, nad, ngn, nio, nok, npr, nzd, omr, pab, pen, pgk, php, pkr, pln, pyg, qar,
  ron, rsd, rub, rwf, sar, sbd, scr, sdg, sek, sgd, shp, sle, sos, srd, ssp, stn,
  svc, syp, szl, thb, tjs, tmt, tnd, top, try, ttd, twd, tzs, uah, ugx, usd, uyu,
  uyw, uzs, ved, ves, vnd, vuv, wst, xaf, xcd, xof, xpf, yer, zar, zmw, zwg,
]

pub opaque type Currency {
  Currency(
    // alpha code
    String,
    // numeric code
    String,
    // display name
    String,
    // symbol
    String,
    // minor units
    Int,
  )
}

/// Types of errors that can be encountered when parsing
/// a currency from it's code (alpha or numeric).
/// 
pub type CurrencyCodeError {
  InvalidFormat
  UnrecognizedCode
}

/// Get the 3 character alphabetic code for the currency.
/// 
pub fn alpha_code(currency: Currency) -> String {
  let Currency(alpha_code, ..) = currency
  alpha_code
}

/// Get the 3 character numeric code for the currency.
/// 
pub fn numeric_code(currency: Currency) -> String {
  let Currency(_, numeric_code, ..) = currency
  numeric_code
}

/// Get the display name of the currency in English.
/// 
pub fn display_name(currency: Currency) -> String {
  let Currency(_, _, display_name, ..) = currency
  display_name
}

/// Get the graphical symbol used as a shorthand 
/// representation of the specific currency unit.
/// 
pub fn symbol(currency: Currency) -> String {
  let Currency(_, _, _, symbol, ..) = currency
  symbol
}

/// The decimal relationship between the currency and
/// it's minor unit, e.g. euro and euro cent.
/// 
/// 1, 2 and 3 signify a ratio of 10:1, 100:1 and 1000:1
/// respectively.
/// 
pub fn minor_units(currency: Currency) -> Int {
  let Currency(_, _, _, _, minor_units, ..) = currency
  minor_units
}

/// Retrieve the list of all the currencies known to this library.
/// 
pub fn known_currencies() -> List(Currency) {
  all_currencies
}

/// Try and retrieve a currency by it's 3 character alphabetic code.
/// 
pub fn from_alpha_code(
  currency_code: String,
) -> Result(Currency, CurrencyCodeError) {
  validate_length(currency_code)
  |> result.try(parse_alpha_code)
}

fn parse_alpha_code(
  currency_code: String,
) -> Result(Currency, CurrencyCodeError) {
  case string.uppercase(currency_code) {
    "AED" -> Ok(aed)
    "AFN" -> Ok(afn)
    "ALL" -> Ok(all)
    "AMD" -> Ok(amd)
    "ANG" -> Ok(ang)
    "AOA" -> Ok(aoa)
    "ARS" -> Ok(ars)
    "AUD" -> Ok(aud)
    "AWG" -> Ok(awg)
    "AZN" -> Ok(azn)
    "BAM" -> Ok(bam)
    "BBD" -> Ok(bbd)
    "BDT" -> Ok(bdt)
    "BGN" -> Ok(bgn)
    "BHD" -> Ok(bhd)
    "BIF" -> Ok(bif)
    "BMD" -> Ok(bmd)
    "BND" -> Ok(bnd)
    "BOB" -> Ok(bob)
    "BRL" -> Ok(brl)
    "BSD" -> Ok(bsd)
    "BTN" -> Ok(btn)
    "BWP" -> Ok(bwp)
    "BYN" -> Ok(byn)
    "BZD" -> Ok(bzd)
    "CAD" -> Ok(cad)
    "CDF" -> Ok(cdf)
    "CHF" -> Ok(chf)
    "CLP" -> Ok(clp)
    "CNY" -> Ok(cny)
    "COP" -> Ok(cop)
    "CRC" -> Ok(crc)
    "CUP" -> Ok(cup)
    "CUC" -> Ok(cuc)
    "CVE" -> Ok(cve)
    "CZK" -> Ok(czk)
    "DJF" -> Ok(djf)
    "DKK" -> Ok(dkk)
    "DOP" -> Ok(dop)
    "DZD" -> Ok(dzd)
    "EGP" -> Ok(egp)
    "ERN" -> Ok(ern)
    "ETB" -> Ok(etb)
    "EUR" -> Ok(eur)
    "FJD" -> Ok(fjd)
    "FKP" -> Ok(fkp)
    "GBP" -> Ok(gbp)
    "GEL" -> Ok(gel)
    "GHS" -> Ok(ghs)
    "GIP" -> Ok(gip)
    "GMD" -> Ok(gmd)
    "GNF" -> Ok(gnf)
    "GTQ" -> Ok(gtq)
    "GYD" -> Ok(gyd)
    "HKD" -> Ok(hkd)
    "HNL" -> Ok(hnl)
    "HRK" -> Ok(hrk)
    "HTG" -> Ok(htg)
    "HUF" -> Ok(huf)
    "IDR" -> Ok(idr)
    "ILS" -> Ok(ils)
    "INR" -> Ok(inr)
    "IQD" -> Ok(iqd)
    "IRR" -> Ok(irr)
    "ISK" -> Ok(isk)
    "JMD" -> Ok(jmd)
    "JPY" -> Ok(jpy)
    "JOD" -> Ok(jod)
    "KES" -> Ok(kes)
    "KGS" -> Ok(kgs)
    "KHR" -> Ok(khr)
    "KMF" -> Ok(kmf)
    "KPW" -> Ok(kpw)
    "KRW" -> Ok(krw)
    "KWD" -> Ok(kwd)
    "KYD" -> Ok(kyd)
    "KZT" -> Ok(kzt)
    "LAK" -> Ok(lak)
    "LBP" -> Ok(lbp)
    "LKR" -> Ok(lkr)
    "LRD" -> Ok(lrd)
    "LSL" -> Ok(lsl)
    "LYD" -> Ok(lyd)
    "MAD" -> Ok(mad)
    "MDL" -> Ok(mdl)
    "MGA" -> Ok(mga)
    "MKD" -> Ok(mkd)
    "MMK" -> Ok(mmk)
    "MNT" -> Ok(mnt)
    "MOP" -> Ok(mop)
    "MRU" -> Ok(mru)
    "MUR" -> Ok(mur)
    "MVR" -> Ok(mvr)
    "MWK" -> Ok(mwk)
    "MXN" -> Ok(mxn)
    "MYR" -> Ok(myr)
    "MZN" -> Ok(mzn)
    "NAD" -> Ok(nad)
    "NPR" -> Ok(npr)
    "NGN" -> Ok(ngn)
    "NIO" -> Ok(nio)
    "NOK" -> Ok(nok)
    "NZD" -> Ok(nzd)
    "OMR" -> Ok(omr)
    "PKR" -> Ok(pkr)
    "PAB" -> Ok(pab)
    "PGK" -> Ok(pgk)
    "PYG" -> Ok(pyg)
    "PEN" -> Ok(pen)
    "PHP" -> Ok(php)
    "PLN" -> Ok(pln)
    "QAR" -> Ok(qar)
    "RON" -> Ok(ron)
    "RSD" -> Ok(rsd)
    "RUB" -> Ok(rub)
    "RWF" -> Ok(rwf)
    "SHP" -> Ok(shp)
    "SAR" -> Ok(sar)
    "SBD" -> Ok(sbd)
    "SCR" -> Ok(scr)
    "SLE" -> Ok(sle)
    "SOS" -> Ok(sos)
    "SSP" -> Ok(ssp)
    "SDG" -> Ok(sdg)
    "SRD" -> Ok(srd)
    "SEK" -> Ok(sek)
    "SGD" -> Ok(sgd)
    "STN" -> Ok(stn)
    "SVC" -> Ok(svc)
    "SYP" -> Ok(syp)
    "SZL" -> Ok(szl)
    "THB" -> Ok(thb)
    "TJS" -> Ok(tjs)
    "TMT" -> Ok(tmt)
    "TZS" -> Ok(tzs)
    "TOP" -> Ok(top)
    "TRY" -> Ok(try)
    "TTD" -> Ok(ttd)
    "TND" -> Ok(tnd)
    "TWD" -> Ok(twd)
    "UAH" -> Ok(uah)
    "UGX" -> Ok(ugx)
    "USD" -> Ok(usd)
    "UYU" -> Ok(uyu)
    "UYW" -> Ok(uyw)
    "UZS" -> Ok(uzs)
    "VUV" -> Ok(vuv)
    "VED" -> Ok(ved)
    "VES" -> Ok(ves)
    "VND" -> Ok(vnd)
    "WST" -> Ok(wst)
    "XAF" -> Ok(xaf)
    "XCD" -> Ok(xcd)
    "XOF" -> Ok(xof)
    "XPF" -> Ok(xpf)
    "YER" -> Ok(yer)
    "ZAR" -> Ok(zar)
    "ZMW" -> Ok(zmw)
    "ZWG" -> Ok(zwg)
    _ -> Error(UnrecognizedCode)
  }
}

/// Try and retrieve a currency by it's 3 character numeric code.
/// 
pub fn from_numeric_code(
  currency_code: String,
) -> Result(Currency, CurrencyCodeError) {
  validate_length(currency_code)
  |> result.try(parse_numeric_code)
}

fn parse_numeric_code(
  currency_code: String,
) -> Result(Currency, CurrencyCodeError) {
  case currency_code {
    "784" -> Ok(aed)
    "971" -> Ok(afn)
    "008" -> Ok(all)
    "051" -> Ok(amd)
    "532" -> Ok(ang)
    "973" -> Ok(aoa)
    "032" -> Ok(ars)
    "036" -> Ok(aud)
    "533" -> Ok(awg)
    "944" -> Ok(azn)
    "977" -> Ok(bam)
    "052" -> Ok(bbd)
    "050" -> Ok(bdt)
    "975" -> Ok(bgn)
    "048" -> Ok(bhd)
    "108" -> Ok(bif)
    "060" -> Ok(bmd)
    "096" -> Ok(bnd)
    "068" -> Ok(bob)
    "986" -> Ok(brl)
    "044" -> Ok(bsd)
    "064" -> Ok(btn)
    "072" -> Ok(bwp)
    "933" -> Ok(byn)
    "084" -> Ok(bzd)
    "124" -> Ok(cad)
    "976" -> Ok(cdf)
    "756" -> Ok(chf)
    "152" -> Ok(clp)
    "156" -> Ok(cny)
    "170" -> Ok(cop)
    "188" -> Ok(crc)
    "931" -> Ok(cuc)
    "192" -> Ok(cup)
    "132" -> Ok(cve)
    "203" -> Ok(czk)
    "262" -> Ok(djf)
    "208" -> Ok(dkk)
    "214" -> Ok(dop)
    "012" -> Ok(dzd)
    "818" -> Ok(egp)
    "232" -> Ok(ern)
    "230" -> Ok(etb)
    "978" -> Ok(eur)
    "242" -> Ok(fjd)
    "238" -> Ok(fkp)
    "826" -> Ok(gbp)
    "981" -> Ok(gel)
    "936" -> Ok(ghs)
    "292" -> Ok(gip)
    "270" -> Ok(gmd)
    "324" -> Ok(gnf)
    "320" -> Ok(gtq)
    "328" -> Ok(gyd)
    "344" -> Ok(hkd)
    "340" -> Ok(hnl)
    "191" -> Ok(hrk)
    "332" -> Ok(htg)
    "348" -> Ok(huf)
    "360" -> Ok(idr)
    "376" -> Ok(ils)
    "356" -> Ok(inr)
    "368" -> Ok(iqd)
    "364" -> Ok(irr)
    "352" -> Ok(isk)
    "388" -> Ok(jmd)
    "392" -> Ok(jpy)
    "400" -> Ok(jod)
    "404" -> Ok(kes)
    "417" -> Ok(kgs)
    "116" -> Ok(khr)
    "174" -> Ok(kmf)
    "408" -> Ok(kpw)
    "410" -> Ok(krw)
    "414" -> Ok(kwd)
    "136" -> Ok(kyd)
    "398" -> Ok(kzt)
    "418" -> Ok(lak)
    "422" -> Ok(lbp)
    "144" -> Ok(lkr)
    "430" -> Ok(lrd)
    "426" -> Ok(lsl)
    "434" -> Ok(lyd)
    "504" -> Ok(mad)
    "498" -> Ok(mdl)
    "969" -> Ok(mga)
    "807" -> Ok(mkd)
    "104" -> Ok(mmk)
    "496" -> Ok(mnt)
    "446" -> Ok(mop)
    "929" -> Ok(mru)
    "480" -> Ok(mur)
    "462" -> Ok(mvr)
    "454" -> Ok(mwk)
    "484" -> Ok(mxn)
    "979" -> Ok(mxn)
    "458" -> Ok(myr)
    "943" -> Ok(mzn)
    "516" -> Ok(nad)
    "524" -> Ok(npr)
    "566" -> Ok(ngn)
    "558" -> Ok(nio)
    "578" -> Ok(nok)
    "554" -> Ok(nzd)
    "512" -> Ok(omr)
    "586" -> Ok(pkr)
    "590" -> Ok(pab)
    "598" -> Ok(pgk)
    "600" -> Ok(pyg)
    "604" -> Ok(pen)
    "608" -> Ok(php)
    "985" -> Ok(pln)
    "634" -> Ok(qar)
    "946" -> Ok(ron)
    "941" -> Ok(rsd)
    "643" -> Ok(rub)
    "646" -> Ok(rwf)
    "654" -> Ok(shp)
    "682" -> Ok(sar)
    "090" -> Ok(sbd)
    "690" -> Ok(scr)
    "925" -> Ok(sle)
    "706" -> Ok(sos)
    "728" -> Ok(ssp)
    "938" -> Ok(sdg)
    "968" -> Ok(srd)
    "752" -> Ok(sek)
    "702" -> Ok(sgd)
    "930" -> Ok(stn)
    "222" -> Ok(svc)
    "760" -> Ok(syp)
    "748" -> Ok(szl)
    "764" -> Ok(thb)
    "972" -> Ok(tjs)
    "934" -> Ok(tmt)
    "776" -> Ok(top)
    "949" -> Ok(try)
    "780" -> Ok(ttd)
    "788" -> Ok(tnd)
    "901" -> Ok(twd)
    "834" -> Ok(tzs)
    "980" -> Ok(uah)
    "800" -> Ok(ugx)
    "840" -> Ok(usd)
    "858" -> Ok(uyu)
    "927" -> Ok(uyw)
    "860" -> Ok(uzs)
    "548" -> Ok(vuv)
    "926" -> Ok(ved)
    "928" -> Ok(ves)
    "704" -> Ok(vnd)
    "882" -> Ok(wst)
    "950" -> Ok(xaf)
    "951" -> Ok(xcd)
    "952" -> Ok(xof)
    "953" -> Ok(xpf)
    "886" -> Ok(yer)
    "710" -> Ok(zar)
    "967" -> Ok(zmw)
    "924" -> Ok(zwg)
    _ -> Error(UnrecognizedCode)
  }
}

fn validate_length(input: String) -> Result(String, CurrencyCodeError) {
  case string.length(input) {
    3 -> Ok(input)
    _ -> Error(InvalidFormat)
  }
}
