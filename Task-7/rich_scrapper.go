package main

import (
	"encoding/csv"
	"log"
	"os"

	//"strings"

	"github.com/gocolly/colly"
)

func checkError(err error) {
	if err != nil {
		panic(err)
	}
}
func main() {
	fName := "data.csv"
	file, err := os.Create(fName)
	checkError(err)
	defer file.Close()
	writer := csv.NewWriter(file)
	defer writer.Flush()

	c := colly.NewCollector(
		colly.AllowedDomains("/*forbes.com*/", "www.forbes.com"),
	)
	//fmt.Println("Visiting", r.URL.String())
	// c.OnHTML("tr[.base.ng-scope]", func(e *colly.HTMLElement) {
	c.OnHTML(".ng-scope ng-table tbody tr", func(e *colly.HTMLElement) {
		writer.Write([]string{
			e.ChildText("td div h3 a .ng-binding"),

			//e.ChildText("span"),
		})

	})

	log.Println(c)
	c.Visit("https://www.forbes.com/real-time-billionaires/#50353c323d78")

}
