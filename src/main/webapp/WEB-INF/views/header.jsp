<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item" href="${cp}">
      <img src="https://bulma.io/images/bulma-logo.png" width="112" height="28">
    </a>

<!--     <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample"> -->
<!--       <span aria-hidden="true"></span> -->
<!--       <span aria-hidden="true"></span> -->
<!--       <span aria-hidden="true"></span> -->
<!--     </a> -->
  </div>

  <div id="navbarBasicExample" class="navbar-menu">
    <div class="navbar-start">
      <a class="navbar-item">
      	버킷리스트란?
      </a>
      
      <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-link">
          	카테고리
        </a>
        <div class="navbar-dropdown">
          <a class="navbar-item">
            About
          </a>
          <a class="navbar-item">
            Jobs
          </a>
          <a class="navbar-item">
            Contact
          </a>
          <hr class="navbar-divider">
          <a class="navbar-item">
            Report an issue
          </a>
        </div>
      </div>

      <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-link">
          	커뮤니티
        </a>
        <div class="navbar-dropdown">
          <a class="navbar-item">
            About
          </a>
          <a class="navbar-item">
            Jobs
          </a>
          <a class="navbar-item">
            Contact
          </a>
          <hr class="navbar-divider">
          <a class="navbar-item">
            Report an issue
          </a>
        </div>
      </div>
    </div>

    <div class="navbar-end">
      <div class="navbar-item">
        <div class="buttons">
          <a class="button is-primary" href="${cp}/member/join">
            <strong>Sign up</strong>
          </a>
          <a class="button is-light" href="${cp}/member/login">
            Log in
          </a>
        </div>
      </div>
    </div>
  </div>
</nav>
    
