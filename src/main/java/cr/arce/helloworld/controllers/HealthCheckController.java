package cr.arce.helloworld.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;

@RestController
@RequestMapping("/health")
public class HealthCheckController {
    @GetMapping("")
	public ResponseEntity<String> healthCheck() {
        // return a JSON response with a 200 status and json status=healthy
		return ResponseEntity
            .status(HttpStatus.OK)
            .body("{\"status\":\"healthy\"}");
	}
}
