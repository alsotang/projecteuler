num = (
  (i for i in [0...1000] when i % 3 == 0 or i % 5 == 0)
    .reduce (a, b) -> a + b
)

console.log num
