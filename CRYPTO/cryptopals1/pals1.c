#include <stdio.h>
#include <stdint.h>
#include <string.h>

int main() {
  char *hex = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d";
  int i;
  unsigned int bytearray[100];
  uint8_t str_len = strlen(hex);
  for ( i = 0; i < (str_len / 2); i++) {
    sscanf(hex + 2*i,"%02x",&bytearray[i]);
    char bytes[] = {bytearray[i]};
    printf("%s",bytearray[i]);

  }
  printf("\n");

  return 0;
}
