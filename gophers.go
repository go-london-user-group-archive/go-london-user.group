package gophers

import "net/http"

func init() {
	http.HandleFunc("/", index)
	http.HandleFunc("/talks/signup", talksSignup)
	http.HandleFunc("/events/next", eventsNext)
}

func index(w http.ResponseWriter, r *http.Request) {
	w.Header().Add("Location", "http://www.meetup.com/Go-London-User-Group/")
	w.WriteHeader(302)
}

func talksSignup(w http.ResponseWriter, r *http.Request) {
	w.Header().Add("Location", "https://goo.gl/IN3BWq")
	w.WriteHeader(302)
}

func eventsNext(w http.ResponseWriter, r *http.Request) {
	w.Header().Add("Location", "https://skillsmatter.com/meetups/8195-london-go-usergroup")
	w.WriteHeader(302)
}
