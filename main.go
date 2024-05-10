package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {

	engine := gin.Default()

	engine.GET("", func(ctx *gin.Context) {
		ctx.JSON(http.StatusOK, gin.H{"message": "success1"})
	})

	engine.Run("0.0.0.0:80")
}
