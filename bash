def caesar_cipher(text, shift, direction):
    result = ""
    for char in text:
        if char.isalpha():
            shift_amount = shift % 26
            if direction == "decrypt":
                shift_amount = -shift_amount
            char_code = ord(char)
            base = ord('A') if char.isupper() else ord('a')
            result += chr((char_code - base + shift_amount) % 26 + base)
        else:
            result += char
    return result

# Example usage
text = input("Enter your message: ")
shift = int(input("Enter shift amount: "))
direction = input("Encrypt or Decrypt? ").lower()

if direction.startswith('e'):
    direction = "encrypt"
elif direction.startswith('d'):
    direction = "decrypt"
else:
    print("Invalid option, defaulting to encrypt.")
    direction = "encrypt"

print("Result:", caesar_cipher(text, shift, direction))

