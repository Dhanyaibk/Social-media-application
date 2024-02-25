import { Component, OnInit } from '@angular/core';
import { AuthService } from '../services/auth.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  email: string;
  password: string;

  constructor(private authService: AuthService) { }

  ngOnInit(): void {
  }

  onSubmit(): void {
    this.authService.login({ email: this.email, password: this.password })
      .subscribe(
        (response) => {
          console.log('Login successful');
          // Handle successful login, e.g., redirect to dashboard
        },
        (error) => {
          console.error('Login failed:', error);
          // Handle login error, e.g., display error message
        }
      );
  }
}
