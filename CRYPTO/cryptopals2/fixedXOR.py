import binascii
from Crypto.Util.strxor import strxor

var1 = '1c0111001f010100061a024b53535009181c'
var2 = '686974207468652062756c6c277320657965'

a = binascii.unhexlify(var1)
b = binascii.unhexlify(var2)

c = strxor(a, b)
print(c)
