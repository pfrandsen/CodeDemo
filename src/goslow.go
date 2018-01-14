package main

import (
	"bufio"
	"flag"
	"fmt"
	"os"
	"time"
)

func slowEcho(scanner *bufio.Scanner, lineLag time.Duration) {
	for scanner.Scan() {
		time.Sleep(lineLag)
		fmt.Println(scanner.Text())
	}
}

func echoFile(path string, lineLag time.Duration) {
	if inFile, err := os.Open(path); err == nil {
		defer inFile.Close()
		scanner := bufio.NewScanner(inFile)
		scanner.Split(bufio.ScanLines)
		slowEcho(scanner, lineLag)
	}
}

func main() {
	slowdown := flag.Int("s", 1000, "Specify wait time in microseconds between each line. Defaults to 1000.")
	filename := flag.String("f", "", "Path to file to echo slowly. Defaults to <stdin>")
	flag.Parse()
	if *filename != "" {
		echoFile(*filename, time.Duration(*slowdown)*time.Microsecond)
	} else {
		slowEcho(bufio.NewScanner(os.Stdin), time.Duration(*slowdown)*time.Microsecond)
	}
}
