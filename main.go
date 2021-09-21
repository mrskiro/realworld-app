package main

import (
	"fmt"
	"log"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "Hello World!", r.Method)
}

func main() {
	fmt.Println("Hello world")
	mux := http.NewServeMux()
	mux.HandleFunc("/", handler)

	err := http.ListenAndServe(":8080", mux)
	if err != nil {
		log.Fatal(err)
	}
}
