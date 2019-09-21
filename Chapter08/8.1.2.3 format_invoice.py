# This won't render right
subtotal = 12.32
tax = subtotal * 0.07
total = subtotal + tax

print("Sub: ${0} Tax: ${1} Total: ${total}".format(subtotal, tax, total=total))

print(f"Sub: ${subtotal} Tax: ${tax} Total: ${total}")

print(f"Sub: ${subtotal:0.2f} Tax: ${tax:0.2f} Total: ${total:0.2f}")


