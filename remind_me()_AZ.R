remind_me <- function() {
  time <- as.POSIXlt(Sys.time())$hour
  if (time == 22) {
    print("IT'S PASTA TIME!")
    print("1. Boil water")
    print("2. Add penne and salt")
    print("3. Cook for 10 minutes")
    print("4. Chop onions")
    print("5. Fry onions in oil")
    print("6. Chop vegetables of choice")
    print("7. Add garlic, herbs and pepper to the onion")
    print("8. Add vegetables into pan to fry")
    print("9. Add salt")
    print("10. Add tomato blocks")
    print("11. Cook until sour tomato-y taste disappears")
    print("12. Put sauce on the pasta and grate cheese")
    print("13. Enjoy!")
  }
}