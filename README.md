# Huff Puzzles & Challenges

My solutions to RareSkills Huff puzzles & Huff challenges, see progress below. To test a puzzle named `FooBar`, write the following command:

```sh
forge test -vvv --mc FooBar
# or use less verbose -vv option
```

In my code-comments for these challenges, the top of the stack is rightmost element:

```c
       // []
0x01   // [0x01]
0x02   // [0x01, 0x02]
swap1  // [0x02, 0x01]
       //        ^ top of stack
```

Most people may prefer the other way around, as can also be seen in [Huff style-guide](https://docs.huff.sh/style-guide/overview/#code-comments):

```c
       // []
0x01   // [0x01]
0x02   // [0x02, 0x01]
swap1  // [0x01, 0x02]
       //  ^ top of stack
```

## [Huff Puzzles](https://github.com/RareSkills/huff-puzzles)

-   [x] [CallValue](./src/CallValue.huff)
-   [x] [CalldataLength](./src/CalldataLength.huff)
-   [x] [MyEtherBalance](./src/MyEtherBalance.huff)
-   [x] [Add1](./src/Add1.huff)
-   [x] [Multiply](./src/Multiply.huff)
-   [x] [NonPayable](./src/NonPayable.huff)
-   [x] [FooBar](./src/FooBar.huff)
-   [x] [SimpleStore](./src/SimpleStore.huff)
-   [x] [RevertCustom](./src/RevertCustom.huff)
-   [x] [RevertString](./src/RevertString.huff)
-   [x] [SumArray](./src/SumArray.huff)
-   [x] [Keccak](./src/Keccak.huff)
-   [x] [MaxOfArray](./src/MaxOfArray.huff)
-   [x] [Create](./src/Create.huff)
-   [x] [Emitter](./src/Emitter.huff)
-   [x] [Donations](./src/Donations.huff)
-   [x] [SendEther](./src/SendEther.huff)
-   [ ] [BasicBank](./src/BasicBank.huff)
-   [ ] [Distribute](./src/Distributor.huff)
-   [ ] [SimulateArray](./src/SimulateArray.huff)

## [Huff Challenges](https://twitter.com/huff_language/status/1586425112135278592)

-   [x] [Challenge1](./src/challenges/Challenge1.huff)
-   [x] [Challenge2](./src/challenges/Challenge2.huff)
-   [x] [Challenge3](./src/challenges/Challenge3.huff)
-   [ ] [Challenge4](./src/challenges/Challenge4.huff)
-   [ ] [Challenge5](./src/challenges/Challenge5.huff)
