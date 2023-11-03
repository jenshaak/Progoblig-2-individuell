use context essentials2021
#inkluderer google drive og sheets, med riktig kilde, så koden CPO skjønner hvor den skal hente tall fra.
include shared-gdrive(
"dcic-2021",
"1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
consumer-data =
load-table: komponent, energi
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    #satte inn string-sanitizer for å få energi-verdiene som string
    sanitize energi using string-sanitizer
end

fun energi-to-number(str :: String) -> Number:
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => 0
  end
where: 
  energi-to-number("") is 0
  energi-to-number("48") is 48
  energi-to-number("37") is 37
end

transform-column(consumer-data, "energi", energi-to-number)
consumer-data